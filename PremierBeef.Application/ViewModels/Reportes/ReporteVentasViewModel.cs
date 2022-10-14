using PremierBeef.Core.Entities.Reportes;

namespace PremierBeef.Application.ViewModels.Reportes
{
    public class ReporteVentasViewModel
    {
        public ReporteVentasViewModel(ReporteVentas reporte)
        {
            id = reporte.id;
            cliente = reporte.cliente;
            tipo_documento = reporte.tipo_documento;
            documento = reporte.documento;
            fecha_emision = reporte.fecha_emision;
            tipo_comprobante = reporte.tipo_comprobante;
            serie_comprobante = reporte.serie_comprobante;
            importe_grabado = reporte.importe_grabado;
            importe_igv = reporte.importe_igv;
            importe_total = reporte.importe_total;
        }
        public int id { get; set; }
        public string cliente { get; set; }
        public string tipo_documento { get; set; }
        public string documento { get; set; }
        public string fecha_emision { get; set; }
        public string tipo_comprobante { get; set; }
        public string serie_comprobante { get; set; }
        public decimal importe_grabado { get; set; }
        public decimal importe_igv { get; set; }
        public decimal importe_total { get; set; }
    }
}
