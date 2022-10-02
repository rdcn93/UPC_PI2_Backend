using PremierBeef.Application.InputModel;
using PremierBeef.Application.ViewModels;

namespace PremierBeef.Application.Services.Almacen
{
    // NOTA: puede usar el comando "Cambiar nombre" del menú "Refactorizar" para cambiar el nombre de interfaz "IAlmacenService" en el código y en el archivo de configuración a la vez.
    public interface IAlmacenService
    {
        Task<int> AddAlmacen(AlmacenModel newU);
        Task<int> UpdateAlmacen(AlmacenModel newU);
        Task<int> RemoveAlmacen(int id);
        Task<AlmacenViewModel> GetAlmacenByAlmacen(string usu);
        Task<AlmacenViewModel> GetAlmacenById(int id);
        Task<List<AlmacenViewModel>> GetAlmacens();
    }
}
