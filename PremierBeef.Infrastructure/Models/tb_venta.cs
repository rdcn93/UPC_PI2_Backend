using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PremierBeef.Infrastructure.Models
{
    [Table("tb_venta")]
    public class tb_venta
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        [ForeignKey("tb_pedido")]
        public int IdPedido { get; set; }
        public string ComprobanteVenta { get; set; }
        public string SerieComprobante { get; set; }
        public string NumeroComprobante { get; set; }
        public decimal ImporteGrabado { get; set; }
        public decimal ImporteIGV { get; set; }
        public decimal ImporteTotal { get; set; }        
        [ForeignKey("tb_tipo_comprobante")]
        public int IdTipoComprobante { get; set; }
        public DateTime FecVenta { get; set; }
        public DateTime FecRegistro { get; set; }
        public DateTime FecModificacion { get; set; }
    }
}
