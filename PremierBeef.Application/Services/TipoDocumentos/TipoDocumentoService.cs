using PremierBeef.Application.ViewModels;
using PremierBeef.Core.Interfaces;

namespace PremierBeef.Application.Services.TipoDocumentos
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "TipoDocumentoService" en el código y en el archivo de configuración a la vez.
    public class TipoDocumentoService : ITipoDocumentoService
    {
        private readonly ITipoDocumentoRepository _tipoDocumentoRepository;

        public TipoDocumentoService(ITipoDocumentoRepository tipoDocumentoRepository)
        {
            _tipoDocumentoRepository = tipoDocumentoRepository;
        }

        public async Task<List<TipoDocumentoViewModel>> GetTipoDocumentos()
        {
            var roles = await _tipoDocumentoRepository.GetTipoDocumentos();

            var rolesM = roles
                .Select(u => new TipoDocumentoViewModel(u))
                .ToList();

            return rolesM;
        }
    }
}
