using System.ComponentModel.DataAnnotations;

namespace PremierBeef.Application.InputModel
{
    public class UsuarioModel
    {
        [Required]
        public int id { get; set; }

        public string usuario { get; set; }
        public string clave { get; set; }
        [Required]
        public string correo { get; set; }
        public string nombre { get; set; }
        public string apePaterno { get; set; }
        public string apeMaterno { get; set; }
        public string telefono { get; set; }
        public int idRol { get; set; }
    }
}
