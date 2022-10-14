using PremierBeef.Core.Entities;

namespace PremierBeef.Core.Interfaces
{
    public interface IProductoRepository
    {
        Task<int> AddProducto(Producto us);
        Task<bool> UpdateProducto(Producto us);
        Task<int> RemoveProducto(int id);
        Task<Producto> GetProductoById(int id);
        Task<Producto> GetProductoByProducto(string Producto);
        Task<List<Producto>> GetProductos();
    }
}
