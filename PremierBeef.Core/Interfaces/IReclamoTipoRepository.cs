using PremierBeef.Core.Entities;

namespace PremierBeef.Core.Interfaces
{
    public interface IReclamoTipoRepository
    {
        Task<List<ReclamoTipo>> GetReclamoTipos();
    }
}
