using PremierBeef.Application.ViewModels;

namespace PremierBeef.Application.Services.ReclamoTipo
{
    // NOTA: puede usar el comando "Cambiar nombre" del menú "Refactorizar" para cambiar el nombre de interfaz "IReclamoTipoService" en el código y en el archivo de configuración a la vez.
    public interface IReclamoTipoService
    {
        Task<List<ReclamoTipoViewModel>> GetReclamoTipos();
    }
}
