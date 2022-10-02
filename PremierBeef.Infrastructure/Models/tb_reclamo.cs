using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PremierBeef.Infrastructure.Models
{
    [Table("tb_reclamo")]
    public class tb_reclamo
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        public string Detalle { get; set; }
        public int IdUsuario { get; set; }
        public int IdPedido { get; set; }
        public int IdTipoReclamo { get; set; }
        public string Respuesta { get; set; }
        public int IdUsuarioRespuesta { get; set; }
        public DateTime FecRegistro { get; set; }
        public DateTime FecModificacion { get; set; }
        public DateTime FecReclamo { get; set; }
        public DateTime FecRespuesta { get; set; }
        public int EstadoReclamo { get; set; }
        public int Estado { get; set; }
    }
}
