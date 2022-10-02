using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PremierBeef.Infrastructure.Models
{
    [Table("tb_producto")]
    public class tb_producto
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public decimal Precio { get; set; }
        [ForeignKey("tb_categoria")]
        public int IdCategoria { get; set; }
        [ForeignKey("tb_proveedor")]
        public int IdProveedor { get; set; }
        public DateTime FecRegistro { get; set; }
        public DateTime FecModificacion { get; set; }

        public List<tb_promocion> promociones { get; set; }

    }
}
