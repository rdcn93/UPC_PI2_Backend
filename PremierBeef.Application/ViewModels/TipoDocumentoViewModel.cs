using PremierBeef.Core.Entities;

namespace PremierBeef.Application.ViewModels
{
    public class TipoDocumentoViewModel
    {
        public TipoDocumentoViewModel(TipoDocumento doc)
        {
            id = doc.id;
            nombre = doc.nombre;
            descripcion = doc.descripcion;
        }

        public int id { get; set; }
        public string nombre { get; set; }
        public string descripcion { get; set; }
    }
}
