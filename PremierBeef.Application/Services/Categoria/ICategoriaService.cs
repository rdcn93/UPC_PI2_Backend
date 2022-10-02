using PremierBeef.Application.InputModel;
using PremierBeef.Application.ViewModels;

namespace PremierBeef.Application.Services.Categoria
{
    // NOTA: puede usar el comando "Cambiar nombre" del menú "Refactorizar" para cambiar el nombre de interfaz "ICategoriaService" en el código y en el archivo de configuración a la vez.
    public interface ICategoriaService
    {
        Task<int> AddCategoria(CategoriaModel newU);
        Task<int> UpdateCategoria(CategoriaModel newU);
        Task<int> RemoveCategoria(int id);
        Task<CategoriaViewModel> GetCategoriaByCategoria(string cat);
        Task<CategoriaViewModel> GetCategoriaById(int id);
        Task<List<CategoriaViewModel>> GetCategorias();
    }
}
