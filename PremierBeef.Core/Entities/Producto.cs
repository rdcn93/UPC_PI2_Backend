namespace PremierBeef.Core.Entities
{
    public class Producto
    {
        public int id { get; set; }
        public string nombre { get; set; }
        public string descripcion { get; set; }
        public decimal precio { get; set; }
        public int idCategoria { get; set; }
        public int idProveedor { get; set; }
        public bool estado { get; set; }
        public DateTime fecRegistro { get; set; }
        public DateTime fecModificacion { get; set; }
    }
}
