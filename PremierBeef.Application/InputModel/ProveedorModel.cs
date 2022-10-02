namespace PremierBeef.Application.InputModel
{
    public class ProveedorModel
    {
        public int id { get; set; }
        public string nombre { get; set; }
        public string descripcion { get; set; }
        public string direccion { get; set; }
        public string telefono { get; set; }
        public int idTipoDocumento { get; set; }
        public string numeroDocumento { get; set; }
        public DateTime fecRegistro { get; set; }
        public DateTime fecModificacion { get; set; }
    }
}
