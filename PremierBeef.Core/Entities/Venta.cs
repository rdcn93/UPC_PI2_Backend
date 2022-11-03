using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PremierBeef.Core.Entities
{
    public class Venta
    {
        public int id { get; set; }
        public int idPedido { get; set; }
        public string comprobanteVenta { get; set; }
        public string serieComprobante { get; set; }
        public string numeroComprobante { get; set; }
        public decimal importeGrabado { get; set; }
        public decimal importeIGV { get; set; }
        public decimal importeTotal { get; set; }
        public int idTipoComprobante { get; set; }
        public DateTime fecVenta { get; set; }
        public DateTime fecRegistro { get; set; }
        public DateTime fecModificacion { get; set; }
    }
}
