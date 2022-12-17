using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PremierBeef.Infrastructure.Models
{
    [Table("tb_pronostico")]
    public class tb_pronostico
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        public string NombreArchivoSalida { get; set; }
        public DateTime FecRegistro { get; set; }
        public bool Estado { get; set; }
    }
}
