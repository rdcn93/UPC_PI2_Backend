namespace PremierBeef.Core.Entities
{
    public class Cliente
    {
        public int id { get; set; }
        public string nombre { get; set; }
        public string apePaterno { get; set; }
        public string apeMaterno { get; set; }
        public string telefono { get; set; }
        public string direccion { get; set; }
        public string correo { get; set; }
        public bool estado { get; set; }
        public DateTime fecRegistro { get; set; }
        public DateTime fecModificacion { get; set; }
        public int idTipoDocumento { get; set; }
        public string numeroDocumento { get; set; }
        public bool enviarPromociones { get; set; }
    }
}
