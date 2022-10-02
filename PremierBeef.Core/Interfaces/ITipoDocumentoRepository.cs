using PremierBeef.Core.Entities;

namespace PremierBeef.Core.Interfaces
{
    public interface ITipoDocumentoRepository
    {
        Task<List<TipoDocumento>> GetTipoDocumentos();
    }
}
