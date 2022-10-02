using PremierBeef.Core.Entities;

namespace PremierBeef.Core.Interfaces
{
    public interface IRolRepository
    {
        Task<List<Rol>> GetRoles();
    }
}
