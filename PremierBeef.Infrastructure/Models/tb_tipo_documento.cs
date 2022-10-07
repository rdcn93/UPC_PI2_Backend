using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PremierBeef.Infrastructure.Models
{
    [Table("tb_tipo_documento")]
    public class tb_tipo_documento
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public int LongitudNumeroDocumento { get; set; }
        public bool Estado { get; set; }
    }
}
