using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PremierBeef.Infrastructure.Models
{
    public class dbo_GetReporteStock
    {
        public string Fecha { get; set; }
        public string Producto { get; set; }
        public decimal Cantidad_Pronostico { get; set; }
        public decimal Cantidad_Real { get; set; }
    }
}
