using PremierBeef.Core.Entities;

namespace PremierBeef.Application.ViewModels
{
    public class ProveedorViewModel
    {
        public ProveedorViewModel(Proveedor pro)
        {
            Id = pro.id;
            Nombre = pro.nombre;
            Descripcion = pro.descripcion;
            Direccion = pro.direccion;
            Telefono = pro.telefono;
            idTipoDocumento = pro.idTipoDocumento;
            numeroDocumento = pro.numeroDocumento;
        }

        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public string Direccion { get; set; }
        public string Telefono { get; set; }
        public int idTipoDocumento { get; set; }
        public string numeroDocumento { get; set; }
    }
}
