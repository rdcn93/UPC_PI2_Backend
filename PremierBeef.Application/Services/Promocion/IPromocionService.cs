using PremierBeef.Application.InputModel;
using PremierBeef.Application.ViewModels;

namespace PremierBeef.Application.Services.Promocion
{
    // NOTA: puede usar el comando "Cambiar nombre" del menú "Refactorizar" para cambiar el nombre de interfaz "IPromocionService" en el código y en el archivo de configuración a la vez.
    public interface IPromocionService
    {
        Task<int> AddPromocion(PromocionModel newU);
        Task<bool> UpdatePromocion(PromocionModel newU);
        Task<int> RemovePromocion(int id);
        Task<PromocionViewModel> GetPromocionByPromocion(string usu);
        Task<PromocionViewModel> GetPromocionById(int id);
        Task<List<PromocionViewModel>> GetPromociones();
    }
}
