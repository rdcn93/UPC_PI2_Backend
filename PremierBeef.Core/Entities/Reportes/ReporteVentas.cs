namespace PremierBeef.Core.Entities.Reportes
{
    public class ReporteVentas
    {
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
