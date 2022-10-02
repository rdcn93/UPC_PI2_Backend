using PremierBeef.Core.Entities;

namespace PremierBeef.Core.Interfaces
{
    public interface IProveedorRepository
    {
        Task<List<Proveedor>> GetProveedores();
        Task<int> AddProveedor(Proveedor us);
        Task<int> UpdateProveedor(Proveedor us);
        Task<int> RemoveProveedor(int id);
        Task<Proveedor> GetProveedorById(int id);
        Task<Proveedor> GetProveedorByProveedor(string proveedor);
    }
}
