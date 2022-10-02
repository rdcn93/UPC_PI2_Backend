using PremierBeef.Application.ViewModels;

namespace PremierBeef.Application.Services.Rol
{
    // NOTA: puede usar el comando "Cambiar nombre" del menú "Refactorizar" para cambiar el nombre de interfaz "IRolService" en el código y en el archivo de configuración a la vez.
    public interface IRolService
    {
        Task<List<RolViewModel>> GetRoles();
    }
}
