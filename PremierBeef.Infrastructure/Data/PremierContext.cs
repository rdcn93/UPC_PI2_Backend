using Microsoft.EntityFrameworkCore;
using PremierBeef.Infrastructure.Models;
using System.ComponentModel.DataAnnotations.Schema;

namespace PremierBeef.Infrastructure.Data
{
    public class PremierContext : DbContext
    {
        public PremierContext()
        {
        }

        public PremierContext(DbContextOptions<PremierContext> options) : base(options)
        {
        }

        public DbSet<tb_usuario> usuarios { get; set; }
        public DbSet<tb_rol> roles { get; set; }
        public DbSet<tb_producto> productos { get; set; }
        public DbSet<tb_producto_categoria> categorias { get; set; }
        public DbSet<tb_proveedor> proveedores { get; set; }
        public DbSet<tb_cliente> clientes { get; set; }
        public DbSet<tb_almacen> almacenes { get; set; }
        public DbSet<tb_reclamo> reclamos { get; set; }
        public DbSet<tb_reclamo_tipo> reclamoTipos { get; set; }
        public DbSet<tb_tipo_documento> tipoDocumentos { get; set; }
        public DbSet<tb_promocion> promociones { get; set; }
        public virtual DbSet<tb_promocion_detalle> promocionesDetalle { get; set; }


        //procedures
        [NotMapped]
        public DbSet<dbo_GetReporteReclamos> dbo_GetReporteReclamos { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {

            modelBuilder.ApplyConfigurationsFromAssembly(typeof(PremierContext).Assembly);

            modelBuilder.Entity<tb_promocion_detalle>().HasKey(x => new { x.IdPromocion, x.IdProducto });
            //modelBuilder.Entity<tb_promocion>().HasMany(x => x.productos)
            //    .WithMany(x => x.promociones)
            //    .UsingEntity<tb_promocion_detalle>(
            //        x => x.HasOne(x => x.Promocion).WithMany().HasForeignKey(x => x.IdPromocion),
            //        x => x.HasOne(x => x.Producto).WithMany().HasForeignKey(x => x.IdProducto));
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            base.OnConfiguring(optionsBuilder);

            optionsBuilder.EnableSensitiveDataLogging();
        }
    }
}
