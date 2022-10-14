using PremierBeef.Application.InputModel;
using PremierBeef.Application.ViewModels;
using PremierBeef.Core.Interfaces;

namespace PremierBeef.Application.Services.Producto
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "ProductoService" en el código y en el archivo de configuración a la vez.
    public class ProductoService : IProductoService
    {
        private readonly IProductoRepository _productoRepository;

        public ProductoService(IProductoRepository productoRepository)
        {
            _productoRepository = productoRepository;
        }

        public async Task<int> AddProducto(ProductoModel newU)
        {
            Core.Entities.Producto usuario = new Core.Entities.Producto
            {
                nombre = newU.nombre,
                descripcion = newU.descripcion,
                precio = newU.precio,
                idCategoria = newU.idCategoria,
                idProveedor = newU.idProveedor,
                fecRegistro = DateTime.Now,
                fecModificacion = DateTime.Now
            };
            var id = await _productoRepository.AddProducto(usuario);

            return id;
        }

        public async Task<bool> UpdateProducto(ProductoModel newU)
        {
            Core.Entities.Producto usuario = new Core.Entities.Producto
            {
                id = newU.id,
                nombre = newU.nombre,
                descripcion = newU.descripcion,
                precio = newU.precio,
                idCategoria = newU.idCategoria,
                idProveedor = newU.idProveedor,
                fecModificacion = DateTime.Now
            };

            var result = await _productoRepository.UpdateProducto(usuario);

            return result;
        }

        public async Task<int> RemoveProducto(int id)
        {
            var result = await _productoRepository.RemoveProducto(id);

            return result;
        }

        public async Task<ProductoViewModel> GetProductoByProducto(string usu)
        {
            ProductoViewModel productVM = null;
            try
            {
                var user = await _productoRepository.GetProductoByProducto(usu);

                productVM = new ProductoViewModel(user);
            }
            catch (Exception)
            {
            }

            return productVM;
        }

        public async Task<ProductoViewModel> GetProductoById(int id)
        {
            ProductoViewModel productVM = null;
            try
            {
                var user = await _productoRepository.GetProductoById(id);

                productVM = new ProductoViewModel(user);
            }
            catch (Exception)
            {
            }

            return productVM;
        }

        public async Task<List<ProductoViewModel>> GetProductos()
        {
            var products = await _productoRepository.GetProductos();

            var productsM = products
                .Select(u => new ProductoViewModel(u))
                .ToList();

            return productsM;
        }
    }
}
