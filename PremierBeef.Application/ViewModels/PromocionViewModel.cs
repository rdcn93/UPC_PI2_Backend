using PremierBeef.Core.Entities;

namespace PremierBeef.Application.ViewModels
{
    public class PromocionViewModel
    {
        public PromocionViewModel(Promocion promo)
        {
            id = promo.id;
            nombre = promo.nombre;
            descripcion = promo.descripcion;
            fecInicio = promo.fecInicio;
            fecFin = promo.fecFin;
            porcentajeDescuento = promo.porcentajeDescuento;
            productosIds = promo.productosIds;
        }
        public int id { get; set; }
        public string nombre { get; set; }
        public string descripcion { get; set; }
        public DateTime fecInicio { get; set; }
        public DateTime fecFin { get; set; }
        public decimal porcentajeDescuento { get; set; }
        public bool estado { get; set; }
        public DateTime fecRegistro { get; set; }
        public DateTime fecModificacion { get; set; }
        public List<int> productosIds { get; set; }
    }
}
