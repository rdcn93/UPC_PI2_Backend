using PremierBeef.Core.Entities;

namespace PremierBeef.Core.Interfaces
{
    public interface ICategoriaRepository
    {
        Task<int> AddCategoria(Categoria us);
        Task<bool> UpdateCategoria(Categoria us);
        Task<int> RemoveCategoria(int id);
        Task<Categoria> GetCategoriaById(int id);
        Task<Categoria> GetCategoriaByCategoria(string categoria);
        Task<List<Categoria>> GetCategorias();
    }
}
