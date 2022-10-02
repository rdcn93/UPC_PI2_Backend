using PremierBeef.Core.Entities;

namespace PremierBeef.Application.ViewModels
{
    public class AlmacenViewModel
    {
        public AlmacenViewModel(Almacen almacen)
        {
            id = almacen.id;
            nombre = almacen.nombre;
            descripcion = almacen.descripcion;
            direccion = almacen.direccion;
            telefono = almacen.telefono;
        }

        public int id { get; set; }
        public string nombre { get; set; }
        public string descripcion { get; set; }
        public string direccion { get; set; }
        public string telefono { get; set; }
    }
}
