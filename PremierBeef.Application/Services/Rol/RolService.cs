using PremierBeef.Application.ViewModels;
using PremierBeef.Core.Interfaces;

namespace PremierBeef.Application.Services.Rol
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "RolService" en el código y en el archivo de configuración a la vez.
    public class RolService : IRolService
    {
        private readonly IRolRepository _rolRepository;

        public RolService(IRolRepository rolRepository)
        {
            _rolRepository = rolRepository;
        }

        public async Task<List<RolViewModel>> GetRoles()
        {
            var roles = await _rolRepository.GetRoles();

            var rolesM = roles
                .Select(u => new RolViewModel(u))
                .ToList();

            return rolesM;
        }
    }
}
