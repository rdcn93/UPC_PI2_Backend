using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PremierBeef.Infrastructure.Models
{
    [Table("tb_migracion")]
    public class tb_migracion
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        public string NombreArchivo { get; set; }
        public string RutaArchivo { get; set; }
        public DateTime FecInicio { get; set; }
        public DateTime FecFin { get; set; }
        public int Estado { get; set; }
        public int TotalFilas { get; set; }
        public int TotalRegistradas { get; set; }
        public int TotalObservaciones { get; set; }
        public int TipoArchivo { get; set; }
    }
}
