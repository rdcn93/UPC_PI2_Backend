using PremierBeef.Core.Entities;

namespace PremierBeef.Application.ViewModels
{
    public class UsuarioViewModel
    {
        public UsuarioViewModel(Usuario usuario)
        {
            id = usuario.id;
            this.usuario = usuario.usuario;
            clave = usuario.clave;
            correo = usuario.correo;
            nombre = usuario.nombre;
            apePaterno = usuario.apePaterno;
            apeMaterno = usuario.apeMaterno;
            telefono = usuario.telefono;
            idRol = usuario.idRol;
            fecRegistro = usuario.fecRegistro;
        }

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
