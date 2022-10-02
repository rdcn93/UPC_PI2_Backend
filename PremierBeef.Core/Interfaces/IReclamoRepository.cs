using PremierBeef.Core.Entities;

namespace PremierBeef.Core.Interfaces
{
    public interface IReclamoRepository
    {
        Task<int> AddReclamo(Reclamo us);
        Task<int> UpdateReclamo(Reclamo us);
        Task<int> RemoveReclamo(int id);
        Task<Reclamo> GetReclamoById(int id);
        Task<List<Reclamo>> GetReclamos();
    }
}
