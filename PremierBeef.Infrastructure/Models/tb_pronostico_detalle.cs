using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PremierBeef.Infrastructure.Models
{
    [Table("tb_pronostico_detalle")]
    public class tb_pronostico_detalle
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        public DateTime Fecha { get; set; }
        public decimal Cantidad { get; set; }
        public bool Estado { get; set; }
        [ForeignKey("tb_pronostico")]
        public int IdPronostico { get; set; }
    }
}
