using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PremierBeef.Infrastructure.Models
{
    [Table("tb_pedido")]
    public class tb_pedido
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        public string DireccionEnvio { get; set; }
        public int Estado { get; set; }
        [ForeignKey("tb_usuario")]
        public int IdUsuario { get; set; }
        [ForeignKey("tb_cliente")]
        public int IdCliente { get; set; }
        [ForeignKey("tb_almacen")]
        public int IdAlmacenPedido { get; set; }
        public DateTime FecRegistro { get; set; }
        public DateTime FecModificacion { get; set; }
    }
}
