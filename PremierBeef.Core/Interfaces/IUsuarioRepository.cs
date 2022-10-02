using PremierBeef.Core.Entities;

namespace PremierBeef.Core.Interfaces
{
    public interface IUsuarioRepository
    {
        Task<int> AddUsuario(Usuario us);
        Task<bool> UpdateUsuario(Usuario us);
        Task<bool> RemoveUsuario(int id);
        Task<Usuario> GetUsuarioById(int id);
        Task<Usuario> GetUsuarioByUsuario(string usuario);
        Task<List<Usuario>> GetUsuarios();
        Task<Usuario> GetUsuarioByCorreo(string correo);
        Task<bool> UpdateContraseña(string correo, string nuevaContraseña);
    }
}
