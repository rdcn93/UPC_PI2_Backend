namespace PremierBeef.Core.Entities
{
    public class Usuario
    {
        public int id { get; set; }
        public string usuario { get; set; }
        public string clave { get; set; }
        public string correo { get; set; }
        public string nombre { get; set; }
        public string apePaterno { get; set; }
        public string apeMaterno { get; set; }
        public string telefono { get; set; }
        public int idRol { get; set; }
        public DateTime fecRegistro { get; set; }
        public DateTime fecModificacion { get; set; }
    }
}
