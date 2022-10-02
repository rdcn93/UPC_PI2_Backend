using PremierBeef.Core.Entities;

namespace PremierBeef.Core.Interfaces
{
    public interface IAlmacenRepository
    {
        Task<int> AddAlmacen(Almacen us);
        Task<int> UpdateAlmacen(Almacen us);
        Task<int> RemoveAlmacen(int id);
        Task<Almacen> GetAlmacenById(int id);
        Task<Almacen> GetAlmacenByAlmacen(string almacen);
        Task<List<Almacen>> GetAlmacens();
    }
}
