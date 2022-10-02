namespace PremierBeef.Application.InputModel
{
    public class PromocionModel
    {
        public int id { get; set; }
        public string nombre { get; set; }
        public string descripcion { get; set; }
        public DateTime fecInicio { get; set; }
        public DateTime fecFin { get; set; }
        public decimal porcentajeDescuento { get; set; }
        public bool estado { get; set; }
        public DateTime fecRegistro { get; set; }
        public DateTime fecModificacion { get; set; }
        public List<int> productosIds { get; set; }
    }
}
