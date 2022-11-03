using DocumentFormat.OpenXml.Wordprocessing;
using Microsoft.AspNetCore.Builder;
using Microsoft.Azure.Functions.Extensions.DependencyInjection;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using PremierBeef.Core.Interfaces;
using PremierBeef.Infrastructure.Data;
using PremierBeef.Infrastructure.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

[assembly: FunctionsStartup(typeof(PremierBeef.DataMigration.Startup))]
namespace PremierBeef.DataMigration
{
    public class Startup : FunctionsStartup
    {
        public override void Configure(IFunctionsHostBuilder builder)
        {            
            var connectionString = System.Environment.GetEnvironmentVariable("sqldb_connection", EnvironmentVariableTarget.Process); ;
            builder.Services.AddDbContext<PremierContext>(x => x.UseSqlServer(connectionString).UseQueryTrackingBehavior(QueryTrackingBehavior.NoTracking));
            builder.Services.AddDbContext<PremierContext>(x => SqlServerDbContextOptionsExtensions.UseSqlServer(x, connectionString));

            builder.Services.AddTransient<IProductoRepository, ProductoRepository>();
            builder.Services.AddTransient<IClienteRepository, ClienteRepository>();
            builder.Services.AddTransient<IVentaRepository, VentaRepository>();
            builder.Services.AddTransient<IPedidoRepository, PedidoRepository>();
            builder.Services.AddTransient<ITipoComprobanteRepository, TipoComprobanteRepository>();
            builder.Services.AddTransient<IUsuarioRepository, UsuarioRepository>();
            builder.Services.AddTransient<IAlmacenRepository, AlmacenRepository>();
            builder.Services.AddTransient<ITipoDocumentoRepository, TipoDocumentoRepository>();
            builder.Services.AddTransient<ICategoriaRepository, CategoriaRepository>();
            builder.Services.AddTransient<IProveedorRepository, ProveedorRepository>();
            builder.Services.AddTransient<IMigracionRepository, MigracionRepository>();

        }
    }
}
