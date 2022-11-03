using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PremierBeef.Infrastructure.Models
{
    [Table("tb_pedido_detalle")]
    public class tb_pedido_detalle
    {
        public int IdPedido { get; set; }
        public int IdProducto { get; set; }
        public decimal Cantidad { get; set; }
        public decimal PrecioUnitario { get; set; }
        public decimal PesoMin { get; set; }
        public decimal PesoMax { get; set; }
        public decimal ImporteDescuento { get; set; }
        public decimal ImporteSubtotal { get; set; }
        public decimal ImporteIGV { get; set; }
        public decimal ImporteTotal { get; set; }
        public bool Estado { get; set; }
    }
}
