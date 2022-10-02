using PremierBeef.Application.ViewModels;

namespace PremierBeef.Application.Services.TipoDocumentos
{
    // NOTA: puede usar el comando "Cambiar nombre" del menú "Refactorizar" para cambiar el nombre de interfaz "ITipoDocumentoService" en el código y en el archivo de configuración a la vez.
    public interface ITipoDocumentoService
    {
        Task<List<TipoDocumentoViewModel>> GetTipoDocumentos();
    }
}
