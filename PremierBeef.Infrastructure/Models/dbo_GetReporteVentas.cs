using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PremierBeef.Infrastructure.Models
{
    public class dbo_GetReporteVentas
    {
        public int Id { get; set; }
        public string Cliente { get; set; }
        public string Tipo_documento { get; set; }
        public string Documento { get; set; }
        public string Fecha_emision { get; set; }
        public string Tipo_comprobante { get; set; }
        public string Serie_comprobante { get; set; }
        public decimal Importe_grabado { get; set; }
        public decimal Importe_igv { get; set; }
        public decimal Importe_total { get; set; }
    }
}
