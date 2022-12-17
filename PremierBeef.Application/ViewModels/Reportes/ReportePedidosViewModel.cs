using PremierBeef.Core.Entities.Reportes;

namespace PremierBeef.Application.ViewModels.Reportes
{
    public class ReportePedidosViewModel
    {
        public ReportePedidosViewModel(ReportePedidos reporte)
        {
            id = reporte.id;
            cliente = reporte.cliente;
            documento = reporte.documento;
            tipo_documento = reporte.tipo_documento;
            fecha_emision = reporte.fecha_emision;
            cantidad_productos = reporte.cantidad_productos;
            total = reporte.total;
        }
        public int id { get; set; }
        public string cliente { get; set; }
        public string documento { get; set; }
        public string tipo_documento { get; set; }
        public string fecha_emision { get; set; }
        public int cantidad_productos { get; set; }
        public decimal total { get; set; }
    }
}
