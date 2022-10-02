using PremierBeef.Application.InputModel;
using PremierBeef.Application.ViewModels;
using PremierBeef.Core.Interfaces;

namespace PremierBeef.Application.Services.Usuario
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "UsuarioService" en el código y en el archivo de configuración a la vez.
    public class UsuarioService : IUsuarioService
    {
        private readonly IUsuarioRepository _usuarioRepository;

        public UsuarioService(IUsuarioRepository usuarioRepository)
        {
            _usuarioRepository = usuarioRepository;
        }

        public async Task<int> AddUsuario(UsuarioModel newU)
        {
            Core.Entities.Usuario usuario = new Core.Entities.Usuario
            {
                usuario = newU.usuario,
                clave = newU.clave,
                correo = newU.correo,
                nombre = newU.nombre,
                apePaterno = newU.apePaterno,
                apeMaterno = newU.apeMaterno,
                telefono = newU.telefono,
                idRol = newU.idRol,
                fecRegistro = DateTime.Now,
                fecModificacion = DateTime.Now
            };

            #region Validar Correo
            //var usuExist = await _usuarioRepository.GetUsuarioByUsuario(usuario.usuario);
            #endregion
            var id = await _usuarioRepository.AddUsuario(usuario);

            return id;
        }

        public async Task<bool> UpdateUsuario(UsuarioModel newU)
        {
            Core.Entities.Usuario usuario = new Core.Entities.Usuario
            {
                id = newU.id,
                usuario = newU.usuario,
                clave = newU.clave,
                correo = newU.correo,
                nombre = newU.nombre,
                apePaterno = newU.apePaterno,
                apeMaterno = newU.apeMaterno,
                telefono = newU.telefono,
                idRol = newU.idRol,
                fecModificacion = DateTime.Now
            };

            var result = await _usuarioRepository.UpdateUsuario(usuario);

            return result;
        }

        public async Task<bool> RemoveUsuario(int id)
        {
            var result = await _usuarioRepository.RemoveUsuario(id);

            return result;
        }

        public async Task<UsuarioViewModel> GetUserByUsuario(string usu)
        {
            UsuarioViewModel productVM = null;

            try
            {
                var user = await _usuarioRepository.GetUsuarioByUsuario(usu);

                productVM = new UsuarioViewModel(user);
            }
            catch (Exception)
            {

            }
            return productVM;
        }

        public async Task<UsuarioViewModel> GetUserByCorreo(string correo)
        {
            UsuarioViewModel productVM = null;
            try
            {
                var user = await _usuarioRepository.GetUsuarioByCorreo(correo);

                productVM = new UsuarioViewModel(user);
            }
            catch (Exception)
            {
            }

            return productVM;
        }

        public async Task<UsuarioViewModel> GetUserById(int id)
        {
            UsuarioViewModel productVM = null;
            try
            {
                var user = await _usuarioRepository.GetUsuarioById(id);

                productVM = new UsuarioViewModel(user);

            }
            catch (Exception)
            {

            }

            return productVM;
        }

        public async Task<List<UsuarioViewModel>> GetUsuarios()
        {
            var products = await _usuarioRepository.GetUsuarios();

            var productsM = products
                .Select(u => new UsuarioViewModel(u))
                .ToList();

            return productsM;
        }

        public async Task<bool> UpdateContraseña(string correo, string nuevaContraseña)
        {

            var result = await _usuarioRepository.UpdateContraseña(correo, nuevaContraseña);

            return result;
        }

    }
}
