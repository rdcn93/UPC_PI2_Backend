using PremierBeef.Core.Entities;

namespace PremierBeef.Core.Interfaces
{
    public interface IClienteRepository
    {
        Task<int> AddCliente(Cliente us);
        Task<bool> UpdateCliente(Cliente us);
        Task<int> RemoveCliente(int id);
        Task<Cliente> GetClienteById(int id);
        Task<Cliente> GetClienteByCliente(Cliente cliente);
        Task<Cliente> GetClienteByNroDocumento(Cliente cli);
        Task<List<Cliente>> GetClientes();
    }
}
