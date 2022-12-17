using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PremierBeef.Core.Entities
{
    public class PronosticoDetalle
    {
        public int id { get; set; }
        public DateTime fecha { get; set; }
        public decimal cantidad { get; set; }
        public bool estado { get; set; }
        public int idPronostico { get; set; }
    }
}
