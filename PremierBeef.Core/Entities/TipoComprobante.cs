using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PremierBeef.Core.Entities
{
    public class TipoComprobante
    {
        public int id { get; set; }
        public string nombre { get; set; }
        public string descripcion { get; set; }
        public bool estado { get; set; }
    }
}
