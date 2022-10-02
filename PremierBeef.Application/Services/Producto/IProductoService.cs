using PremierBeef.Application.InputModel;
using PremierBeef.Application.ViewModels;

namespace PremierBeef.Application.Services.Producto
{
    // NOTA: puede usar el comando "Cambiar nombre" del menú "Refactorizar" para cambiar el nombre de interfaz "IProductoService" en el código y en el archivo de configuración a la vez.
    public interface IProductoService
    {
        Task<int> AddProducto(ProductoModel newU);
        Task<int> UpdateProducto(ProductoModel newU);
        Task<int> RemoveProducto(int id);
        Task<ProductoViewModel> GetProductoByProducto(string usu);
        Task<ProductoViewModel> GetProductoById(int id);
        Task<List<ProductoViewModel>> GetProductos();
    }
}
