using PremierBeef.Core.Entities;

namespace PremierBeef.Application.ViewModels
{
    public class ProductoViewModel
    {
        public ProductoViewModel(Producto producto)
        {
            id = producto.id;
            nombre = producto.nombre;
            descripcion = producto.descripcion;
            precio = producto.precio;
            idCategoria = producto.idCategoria;
            idProveedor = producto.idProveedor;
            fecRegistro = producto.fecRegistro;
            fecModificacion = producto.fecModificacion;
        }

        public int id { get; set; }
        public string nombre { get; set; }
        public string descripcion { get; set; }
        public decimal precio { get; set; }
        public int idCategoria { get; set; }
        public int idProveedor { get; set; }
        public DateTime fecRegistro { get; set; }
        public DateTime fecModificacion { get; set; }
    }
}
