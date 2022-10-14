using PremierBeef.Application.InputModel;
using PremierBeef.Application.ViewModels;

namespace PremierBeef.Application.Services.Proveedor
{
    // NOTA: puede usar el comando "Cambiar nombre" del menú "Refactorizar" para cambiar el nombre de interfaz "IProveedorService" en el código y en el archivo de configuración a la vez.
    public interface IProveedorService
    {
        Task<int> AddProveedor(ProveedorModel newU);
        Task<bool> UpdateProveedor(ProveedorModel newU);
        Task<int> RemoveProveedor(int id);
        Task<ProveedorViewModel> GetProveedorByProveedor(string usu);
        Task<ProveedorViewModel> GetProveedorById(int id);
        Task<List<ProveedorViewModel>> GetProveedores();
    }
}
