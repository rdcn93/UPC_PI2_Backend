using PremierBeef.Application.InputModel;
using PremierBeef.Application.ViewModels;

namespace PremierBeef.Application.Services.Cliente
{
    // NOTA: puede usar el comando "Cambiar nombre" del menú "Refactorizar" para cambiar el nombre de interfaz "IClienteService" en el código y en el archivo de configuración a la vez.
    public interface IClienteService
    {
        Task<int> AddCliente(ClienteModel newU);
        Task<int> UpdateCliente(ClienteModel newU);
        Task<int> RemoveCliente(int id);
        Task<ClienteViewModel> GetClienteByCliente(ClienteModel cli);
        Task<ClienteViewModel> GetClienteById(int id);
        Task<List<ClienteViewModel>> GetClientes();
    }
}
