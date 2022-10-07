using PremierBeef.Application.InputModel;
using PremierBeef.Application.Services.Usuario;
using PremierBeef.Application.ViewModels;
using PremierBeef.Core.Entities;

namespace PremierBeef.Test.FakeServices
{
    public class UsuarioServiceFake : IUsuarioService
    {
        private readonly List<UsuarioViewModel> _usuarios;
        public UsuarioServiceFake()
        {
            _usuarios = new List<UsuarioViewModel>() {
                new UsuarioViewModel(new Usuario{ id = 1, nombre = "Raul", apePaterno = "Castañeda", apeMaterno = "Najar", correo = "rdcn93@hotmail.com" }){ },
                new UsuarioViewModel(new Usuario{ id = 2, nombre = "Juan", apePaterno = "Salas", apeMaterno = "Lopez", correo = "abc123@hotmail.com"}){ },
                new UsuarioViewModel(new Usuario{ id = 3, nombre = "Luis", apePaterno = "Gomez", apeMaterno = "Huaman", correo = "zxc456@hotmail.com"}){ },
                new UsuarioViewModel(new Usuario{ id = 4, nombre = "Jose", apePaterno = "Huaman", apeMaterno = "Salas", correo = "qwe789@hotmail.com"}){ },
                new UsuarioViewModel(new Usuario{id = 12, nombre = "Martin", apePaterno = "Lopez", apeMaterno = "Gomez", correo = "bnm345@hotmail.com"}){ }
            };
        }
        public async Task<int> AddUsuario(UsuarioModel newU)
        {
            int newId = _usuarios.OrderByDescending(x => x.id).First().id + 1;
            UsuarioViewModel newUser = new UsuarioViewModel(new Usuario
            {
                id = newId,
                nombre = newU.nombre,
                apePaterno = newU.apePaterno,
                apeMaterno = newU.apeMaterno,
                usuario = newU.usuario,
                clave = newU.clave,
                correo = newU.correo,
                idRol = newU.idRol,
                telefono = newU.telefono,
                fecRegistro = DateTime.Now,
                fecModificacion = DateTime.Now
            });

            _usuarios.Add(newUser);

            return newU.id;
        }

        public async Task<bool> UpdateUsuario(UsuarioModel newU)
        {
            bool result = false;

            try
            {
                var existing = _usuarios.Where(a => a.id == newU.id).FirstOrDefault();
                if (existing != null)
                {
                    existing.usuario = newU.usuario;
                    existing.clave = newU.clave;
                    existing.nombre = newU.nombre;
                    existing.apePaterno = newU.apePaterno;
                    existing.apeMaterno = newU.apeMaterno;
                    existing.fecModificacion = DateTime.Now;
                    result = true;
                }
            }
            catch (Exception)
            {
                result = false;
            }

            return result;
        }

        public async Task<bool> RemoveUsuario(int id)
        {
            bool result = false;
            var existing = _usuarios.First(a => a.id == id);

            if (existing != null)
            {
                result = _usuarios.Remove(existing);
            }

            return result;
        }

        public async Task<UsuarioViewModel> GetUserByUsuario(string usu)
        {
            var existing = _usuarios.First(a => a.usuario == usu);

            return existing;
        }

        public async Task<UsuarioViewModel> GetUserByCorreo(string correo)
        {
            UsuarioViewModel productVM = null;
            try
            {
                var user = _usuarios.First(a => a.correo == correo);

                if (user != null)
                    productVM = user;

            }
            catch (Exception)
            {
            }

            return productVM;
        }

        public async Task<UsuarioViewModel> GetUserById(int id)
        {
            var existing = _usuarios.Where(a => a.id == id).FirstOrDefault();

            return existing;
        }

        public async Task<List<UsuarioViewModel>> GetUsuarios()
        {
            return _usuarios;
        }

        public async Task<bool> UpdateContraseña(string correo, string nuevaContraseña)
        {
            bool result = false;
            var user = _usuarios.First(a => a.correo == correo);

            if (user != null)
            {
                user.clave = nuevaContraseña;
                result = true;
            }

            return result;
        }
    }
}
