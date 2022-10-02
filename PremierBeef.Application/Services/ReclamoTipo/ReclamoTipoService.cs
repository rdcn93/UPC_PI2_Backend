using PremierBeef.Application.ViewModels;
using PremierBeef.Core.Interfaces;

namespace PremierBeef.Application.Services.ReclamoTipo
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "ReclamoTipoService" en el código y en el archivo de configuración a la vez.
    public class ReclamoTipoService : IReclamoTipoService
    {
        private readonly IReclamoTipoRepository _reclamoTipoRepository;

        public ReclamoTipoService(IReclamoTipoRepository reclamoTipoRepository)
        {
            _reclamoTipoRepository = reclamoTipoRepository;
        }

        public async Task<List<ReclamoTipoViewModel>> GetReclamoTipos()
        {
            var roles = await _reclamoTipoRepository.GetReclamoTipos();

            var rolesM = roles
                .Select(u => new ReclamoTipoViewModel(u))
                .ToList();

            return rolesM;
        }
    }
}
