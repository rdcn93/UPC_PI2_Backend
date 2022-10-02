using PremierBeef.Core.Entities;

namespace PremierBeef.Application.ViewModels
{
    public class ReclamoTipoViewModel
    {
        public ReclamoTipoViewModel(ReclamoTipo reclamoTipo)
        {
            id = reclamoTipo.id;
            nombre = reclamoTipo.nombre;
            descripcion = reclamoTipo.descripcion;
        }

        public int id { get; set; }
        public string nombre { get; set; }
        public string descripcion { get; set; }
    }
}
