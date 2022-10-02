using PremierBeef.Application.InputModel;
using PremierBeef.Application.ViewModels;
using PremierBeef.Core.Interfaces;

namespace PremierBeef.Application.Services.Categoria
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "CategoriaService" en el código y en el archivo de configuración a la vez.
    public class CategoriaService : ICategoriaService
    {
        private readonly ICategoriaRepository _categoriaRepository;

        public CategoriaService(ICategoriaRepository categoriaRepository)
        {
            _categoriaRepository = categoriaRepository;
        }

        public async Task<int> AddCategoria(CategoriaModel newU)
        {
            Core.Entities.Categoria cliente = new Core.Entities.Categoria
            {
                nombre = newU.nombre,
                descripcion = newU.descripcion,
                //direccion = newU.direccion,
                //fecRegistro = DateTime.Now,
                //fecModificacion = DateTime.Now
            };
            var id = await _categoriaRepository.AddCategoria(cliente);

            return id;
        }

        public async Task<int> UpdateCategoria(CategoriaModel newU)
        {
            Core.Entities.Categoria usuario = new Core.Entities.Categoria
            {
                id = newU.id,
                nombre = newU.nombre,
                descripcion = newU.descripcion,
                //direccion = newU.direccion,
                //fecModificacion = DateTime.Now
            };

            var result = await _categoriaRepository.UpdateCategoria(usuario);

            return result;
        }

        public async Task<int> RemoveCategoria(int id)
        {
            var result = await _categoriaRepository.RemoveCategoria(id);

            return result;
        }

        public async Task<CategoriaViewModel> GetCategoriaByCategoria(string cat)
        {
            var user = await _categoriaRepository.GetCategoriaByCategoria(cat);

            CategoriaViewModel productVM = new CategoriaViewModel(user);

            return productVM;
        }

        public async Task<CategoriaViewModel> GetCategoriaById(int id)
        {
            var user = await _categoriaRepository.GetCategoriaById(id);

            CategoriaViewModel productVM = new CategoriaViewModel(user);

            return productVM;
        }

        public async Task<List<CategoriaViewModel>> GetCategorias()
        {
            var products = await _categoriaRepository.GetCategorias();

            var productsM = products
                .Select(u => new CategoriaViewModel(u))
                .ToList();

            return productsM;
        }
    }
}
