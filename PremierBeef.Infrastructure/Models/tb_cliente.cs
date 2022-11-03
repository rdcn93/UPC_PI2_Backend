using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PremierBeef.Infrastructure.Models
{
    [Table("tb_cliente")]
    public class tb_cliente
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string ApePaterno { get; set; }
        public string ApeMaterno { get; set; }
        public string Telefono { get; set; }
        public string Direccion { get; set; }
        public string Correo { get; set; }
        public int IdTipoDocumento { get; set; }
        public string NumeroDocumento { get; set; }
        public bool EnviarPromociones { get; set; }
        public bool Estado { get; set; }
        public DateTime FecRegistro { get; set; }
        public DateTime FecModificacion { get; set; }

    }
}
