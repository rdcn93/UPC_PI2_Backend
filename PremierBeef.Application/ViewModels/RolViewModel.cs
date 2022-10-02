using PremierBeef.Core.Entities;

namespace PremierBeef.Application.ViewModels
{
    public class RolViewModel
    {
        public RolViewModel(Rol usuario)
        {
            id = usuario.id;
            nombre = usuario.nombre;
            descripcion = usuario.descripcion;
        }

        public int id { get; set; }
        public string nombre { get; set; }
        public string descripcion { get; set; }
    }
}
