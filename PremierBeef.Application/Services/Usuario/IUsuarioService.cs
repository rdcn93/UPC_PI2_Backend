using PremierBeef.Application.InputModel;
using PremierBeef.Application.ViewModels;

namespace PremierBeef.Application.Services.Usuario
{
    // NOTA: puede usar el comando "Cambiar nombre" del menú "Refactorizar" para cambiar el nombre de interfaz "IUsuarioService" en el código y en el archivo de configuración a la vez.
    public interface IUsuarioService
    {
        Task<int> AddUsuario(UsuarioModel newU);
        Task<bool> UpdateUsuario(UsuarioModel newU);
        Task<bool> RemoveUsuario(int id);
        Task<UsuarioViewModel> GetUserByUsuario(string usu);
        Task<UsuarioViewModel> GetUserById(int id);
        Task<List<UsuarioViewModel>> GetUsuarios();
        Task<UsuarioViewModel> GetUserByCorreo(string correo);
        Task<bool> UpdateContraseña(string correo, string nuevaContraseña);
    }
}
