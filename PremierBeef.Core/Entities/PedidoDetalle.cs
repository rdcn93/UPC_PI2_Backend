using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PremierBeef.Core.Entities
{
    public class PedidoDetalle
    {
        public int idPedido { get; set; }
        public int idProducto { get; set; }
        public decimal cantidad { get; set; }
        public decimal precioUnitario { get; set; }
        public decimal pesoMin { get; set; }
        public decimal pesoMax { get; set; }
        public decimal importeDescuento { get; set; }
        public decimal importeSubtotal { get; set; }
        public decimal importeIGV { get; set; }
        public decimal importeTotal { get; set; }
        public bool estado { get; set; }
    }
}
