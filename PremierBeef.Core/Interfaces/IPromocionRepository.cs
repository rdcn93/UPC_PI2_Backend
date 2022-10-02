using PremierBeef.Core.Entities;

namespace PremierBeef.Core.Interfaces
{
    public interface IPromocionRepository
    {
        Task<List<Promocion>> GetPromociones();
        Task<int> AddPromocion(Promocion us);
        Task<bool> UpdatePromocion(Promocion us);
        Task<int> RemovePromocion(int id);
        Task<Promocion> GetPromocionById(int id);
        Task<Promocion> GetPromocionByPromocion(string promocion);
        Task<bool> AddPromocionDetalle(PromocionDetalle us);
        Task<bool> RemovePromocionDetalleTodo(int idProm);
        Task<List<int>> GetPromocionProductosIds(int idPromocion);
    }
}
