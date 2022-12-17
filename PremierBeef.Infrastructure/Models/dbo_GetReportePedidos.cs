using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PremierBeef.Infrastructure.Models
{
    public class dbo_GetReportePedidos
    {
        public int Id { get; set; }
        public string Cliente { get; set; }
        public string Documento { get; set; }
        public string Tipo_documento { get; set; }
        public string Fecha_emision { get; set; }
        public int Cantidad_productos { get; set; }
        public decimal Total { get; set; }
    }
}
