using System.ComponentModel.DataAnnotations.Schema;

namespace PremierBeef.Infrastructure.Models
{
    [Table("tb_promocion_detalle")]
    public class tb_promocion_detalle
    {
        public int IdPromocion { get; set; }
        public int IdProducto { get; set; }
        public bool Estado { get; set; }

        //public tb_producto Producto { get; set; }
        //public tb_promocion Promocion { get; set; }
    }
}
