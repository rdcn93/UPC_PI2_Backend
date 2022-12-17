namespace PremierBeef.Core.Entities.Reportes
{
    public class ReportePedidos
    {
        public int id { get; set; }
        public string cliente { get; set; }
        public string documento { get; set; }
        public string tipo_documento { get; set; }
        public string fecha_emision { get; set; }
        public int cantidad_productos { get; set; }
        public decimal total { get; set; }
    }
}
