using PremierBeef.Application.InputModel;
using PremierBeef.Application.ViewModels;
using PremierBeef.Core.Entities;
using PremierBeef.Core.Interfaces;

namespace PremierBeef.Application.Services.Promocion
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "PromocionService" en el código y en el archivo de configuración a la vez.
    public class PromocionService : IPromocionService
    {
        private readonly IPromocionRepository _promocionRepository;

        public PromocionService(IPromocionRepository promocionRepository)
        {
            _promocionRepository = promocionRepository;
        }

        public async Task<int> AddPromocion(PromocionModel newP)
        {
            Core.Entities.Promocion cliente = new Core.Entities.Promocion
            {
                nombre = newP.nombre,
                descripcion = newP.descripcion,
                fecInicio = newP.fecInicio,
                fecFin = newP.fecFin,
                porcentajeDescuento = newP.porcentajeDescuento,
                estado = newP.estado,
                fecRegistro = DateTime.Now,
                fecModificacion = DateTime.Now
            };
            var id = await _promocionRepository.AddPromocion(cliente);

            if (id != 0)
            {
                foreach (int pId in newP.productosIds)
                {
                    var resAddDet = await _promocionRepository.AddPromocionDetalle(new PromocionDetalle { idPromocion = id, idProducto = pId });
                }
            }

            return id;
        }

        public async Task<bool> UpdatePromocion(PromocionModel newP)
        {
            Core.Entities.Promocion usuario = new Core.Entities.Promocion
            {
                id = newP.id,
                nombre = newP.nombre,
                descripcion = newP.descripcion,
                fecInicio = newP.fecInicio,
                fecFin = newP.fecFin,
                porcentajeDescuento = newP.porcentajeDescuento,
                estado = newP.estado,
                fecModificacion = DateTime.Now
            };

            var result = await _promocionRepository.UpdatePromocion(usuario);

            if (result)
            {
                var resultUpd = await _promocionRepository.RemovePromocionDetalleTodo(newP.id);

                if (resultUpd)
                {
                    foreach (int pId in newP.productosIds)
                    {
                        var resAddDet = await _promocionRepository.AddPromocionDetalle(new PromocionDetalle { idPromocion = newP.id, idProducto = pId });
                    }
                }
            }

            return result;
        }

        public async Task<int> RemovePromocion(int id)
        {
            var result = await _promocionRepository.RemovePromocion(id);

            return result;
        }

        public async Task<PromocionViewModel> GetPromocionByPromocion(string usu)
        {
            var user = await _promocionRepository.GetPromocionByPromocion(usu);

            PromocionViewModel productVM = new PromocionViewModel(user);

            return productVM;
        }

        public async Task<PromocionViewModel> GetPromocionById(int id)
        {
            var user = await _promocionRepository.GetPromocionById(id);

            if (user != null)
            {
                var ids = await _promocionRepository.GetPromocionProductosIds(id);
                user.productosIds = ids;
            }

            PromocionViewModel productVM = new PromocionViewModel(user);

            return productVM;
        }

        public async Task<List<PromocionViewModel>> GetPromociones()
        {
            var roles = await _promocionRepository.GetPromociones();

            var rolesM = roles
                .Select(u => new PromocionViewModel(u))
                .ToList();

            return rolesM;
        }
    }
}
