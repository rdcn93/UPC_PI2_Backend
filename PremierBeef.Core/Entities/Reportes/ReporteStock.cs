namespace PremierBeef.Core.Entities.Reportes
{
    public class ReporteStock
    {
        public string fecha { get; set; }
        public string producto { get; set; }
        public decimal cantidad_Pronostico { get; set; }
        public decimal cantidad_Real { get; set; }
    }
}
