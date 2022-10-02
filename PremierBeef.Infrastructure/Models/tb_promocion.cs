using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PremierBeef.Infrastructure.Models
{

    [Table("tb_promocion")]
    public class tb_promocion
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public DateTime FecInicio { get; set; }
        public DateTime FecFin { get; set; }
        public decimal PorcentajeDescuento { get; set; }
        public bool Estado { get; set; }
        public DateTime FecRegistro { get; set; }
        public DateTime FecModificacion { get; set; }

        public List<tb_producto> productos { get; set; }

    }
}
