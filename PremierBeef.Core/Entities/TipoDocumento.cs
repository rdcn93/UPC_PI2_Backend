namespace PremierBeef.Core.Entities
{
    public class TipoDocumento
    {
        public int id { get; set; }
        public string nombre { get; set; }
        public string descripcion { get; set; }
        public int longitudNumeroDocumento { get; set; }
        public bool estado { get; set; }
    }
}
