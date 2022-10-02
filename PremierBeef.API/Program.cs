using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Tokens;
using PremierBeef.Application.Services.Almacen;
using PremierBeef.Application.Services.Categoria;
using PremierBeef.Application.Services.Cliente;
using PremierBeef.Application.Services.Producto;
using PremierBeef.Application.Services.Promocion;
using PremierBeef.Application.Services.Proveedor;
using PremierBeef.Application.Services.Reclamo;
using PremierBeef.Application.Services.ReclamoTipo;
using PremierBeef.Application.Services.Reporte;
using PremierBeef.Application.Services.Rol;
using PremierBeef.Application.Services.Security;
using PremierBeef.Application.Services.TipoDocumentos;
using PremierBeef.Application.Services.Usuario;
using PremierBeef.Core.Interfaces;
using PremierBeef.Infrastructure.Data;
using PremierBeef.Infrastructure.Repository;
using PremierBeef.Mail;
using System.Text;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

//Configuracion para hash clave
builder.Services.Configure<PremierBeef.Core.Entities.PasswordOptions>(options => builder.Configuration.GetSection("PasswordOptions").Bind(options));

var connectionString = builder.Configuration.GetConnectionString("DevConnection");
builder.Services.AddDbContext<PremierContext>(x => x.UseSqlServer(connectionString));

#region Configuración de servicios - Inyección de Dependencias
builder.Services.AddTransient<IUsuarioRepository, UsuarioRepository>();
builder.Services.AddScoped<IUsuarioService, UsuarioService>();

builder.Services.AddTransient<IRolRepository, RolRepository>();
builder.Services.AddScoped<IRolService, RolService>();

builder.Services.AddTransient<IProductoRepository, ProductoRepository>();
builder.Services.AddScoped<IProductoService, ProductoService>();

builder.Services.AddTransient<IProveedorRepository, ProveedorRepository>();
builder.Services.AddScoped<IProveedorService, ProveedorService>();

builder.Services.AddTransient<ICategoriaRepository, CategoriaRepository>();
builder.Services.AddScoped<ICategoriaService, CategoriaService>();

builder.Services.AddTransient<IClienteRepository, ClienteRepository>();
builder.Services.AddScoped<IClienteService, ClienteService>();

builder.Services.AddTransient<IAlmacenRepository, AlmacenRepository>();
builder.Services.AddScoped<IAlmacenService, AlmacenService>();

builder.Services.AddTransient<IReclamoRepository, ReclamoRepository>();
builder.Services.AddScoped<IReclamoService, ReclamoService>();

builder.Services.AddTransient<IReclamoTipoRepository, ReclamoTipoRepository>();
builder.Services.AddScoped<IReclamoTipoService, ReclamoTipoService>();

builder.Services.AddTransient<ITipoDocumentoRepository, TipoDocumentoRepository>();
builder.Services.AddScoped<ITipoDocumentoService, TipoDocumentoService>();

builder.Services.AddTransient<IPromocionRepository, PromocionRepository>();
builder.Services.AddScoped<IPromocionService, PromocionService>();

builder.Services.AddTransient<IReporteRepository, ReporteRepository>();
builder.Services.AddScoped<IReporteService, ReporteService>();

builder.Services.AddScoped<ISecurityService, SecurityService>();
#endregion


var emailConfig = builder.Configuration
    .GetSection("EmailConfiguration")
    .Get<EmailConfiguration>();
builder.Services.AddSingleton(emailConfig);
builder.Services.AddScoped<IEmailSender, EmailSender>();

//builder.Services.AddIdentity<UsuarioViewModel, IdentityRole>(opt =>
//{
//    opt.Password.RequiredLength = 7;
//    opt.Password.RequireDigit = false;

//    opt.User.RequireUniqueEmail = true;
//}).AddDefaultTokenProviders();

builder.Services.Configure<DataProtectionTokenProviderOptions>(opt =>
    opt.TokenLifespan = TimeSpan.FromHours(2));


builder.Services.AddAuthentication(opt =>
{
    opt.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
    opt.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
})
    .AddJwtBearer(options =>
    {
        options.TokenValidationParameters = new TokenValidationParameters
        {
            ValidateIssuer = true,
            ValidateAudience = true,
            ValidateLifetime = true,
            ValidateIssuerSigningKey = true,
            ValidIssuer = builder.Configuration["JWT:ValidIssuer"],
            ValidAudience = builder.Configuration["JWT:ValidAudience"],
            IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(builder.Configuration["JWT:Secret"]))
        };
    });

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

using (var scope = app.Services.CreateScope())
{
    var dbContext = scope.ServiceProvider.GetRequiredService<PremierContext>();
}

app.UseHttpsRedirection();

app.UseAuthentication();

app.UseAuthorization();

app.MapControllers();

app.UseCors(x => x
        .AllowAnyOrigin()
        .AllowAnyMethod()
        .AllowAnyHeader());


app.Run();
