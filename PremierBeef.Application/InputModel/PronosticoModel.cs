using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PremierBeef.Application.InputModel
{
    public class PronosticoModel
    {
        public int id { get; set; }
        public string nombreArchivoSalida { get; set; }
        public DateTime fecRegistro { get; set; }
        public bool estado { get; set; }
    }
}
