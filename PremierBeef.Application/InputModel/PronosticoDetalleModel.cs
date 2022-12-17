using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PremierBeef.Application.InputModel
{
    public class PronosticoDetalleModel
    {
        public int id { get; set; }
        public DateTime fecha { get; set; }
        public decimal cantidad { get; set; }
        public bool estado { get; set; }
        public int idPronostico { get; set; }
    }
}
