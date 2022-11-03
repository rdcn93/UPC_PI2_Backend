using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
namespace PremierBeef.Core.Entities
{
    public class Pedido
    {
        public int id { get; set; }
        public string direccionEnvio { get; set; }
        public int estado { get; set; }
        public int idUsuario { get; set; }
        public int idCliente { get; set; }
        public int idAlmacenPedido { get; set; }
        public DateTime fecRegistro { get; set; }
        public DateTime fecModificacion { get; set; }
        public string comprobante { get; set; }
        public int IdAlmacenPedido { get; set; }
    }
}
