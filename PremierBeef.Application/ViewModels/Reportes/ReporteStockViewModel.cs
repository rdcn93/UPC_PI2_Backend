using PremierBeef.Core.Entities.Reportes;

namespace PremierBeef.Application.ViewModels.Reportes
{
    public class ReporteStockViewModel
    {
        public ReporteStockViewModel(ReporteStock reporte)
        {
            fecha = reporte.fecha;
            producto = reporte.producto;
            cantidad_Pronostico = reporte.cantidad_Pronostico;
            cantidad_Real = reporte.cantidad_Real;
        }

        public string fecha { get; set; }
        public string producto { get; set; }
        public decimal cantidad_Pronostico { get; set; }
        public decimal cantidad_Real { get; set; }
    }
}
