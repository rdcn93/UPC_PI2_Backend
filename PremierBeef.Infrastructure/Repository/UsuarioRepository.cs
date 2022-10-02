using Microsoft.EntityFrameworkCore;
using PremierBeef.Core.Entities;
using PremierBeef.Core.Interfaces;
using PremierBeef.Infrastructure.Data;
using PremierBeef.Infrastructure.Models;

namespace PremierBeef.Infrastructure.Repository
{
    public class UsuarioRepository : IUsuarioRepository
    {
        private readonly PremierContext _context;

        public UsuarioRepository(PremierContext context)
        {
            _context = context;
        }

        public Task<int> AddUsuario(Usuario us)
        {
            int newId = 0;
            tb_usuario tb_user = new tb_usuario
            {
                Usuario = us.usuario,
                Clave = us.clave,
                Correo = us.correo,
                Nombre = us.nombre,
                ApePaterno = us.apePaterno,
                ApeMaterno = us.apeMaterno,
                Telefono = us.telefono,
                IdRol = us.idRol,
                FecRegistro = us.fecRegistro,
                FecModificacion = us.fecModificacion
            };

            try
            {
                _context.usuarios.Add(tb_user);
                _context.SaveChanges();

                newId = tb_user.Id;
            }
            catch (Exception)
            {
                tb_user.Id = 0;
            }

            return Task.FromResult(newId);
        }

        public Task<bool> UpdateUsuario(Usuario us)
        {
            bool result = false;
            tb_usuario updUser = new tb_usuario
            {
                Id = us.id,
                Usuario = us.usuario,
                Clave = us.clave,
                Correo = us.correo,
                Nombre = us.nombre,
                ApePaterno = us.apePaterno,
                ApeMaterno = us.apeMaterno,
                Telefono = us.telefono,
                IdRol = us.idRol,
                FecModificacion = DateTime.Now
            };

            try
            {
                //var dbEntry = _context.Entry(tb_user);

                //dbEntry.Property(x => x.Id).IsModified = false;
                //dbEntry.Property(x => x.FecRegistro).IsModified = false;

                _context.usuarios.Attach(updUser);
                _context.Entry(updUser).State = EntityState.Modified;
                _context.Entry(updUser).Property(x => x.Id).IsModified = false;
                _context.Entry(updUser).Property(X => X.FecRegistro).IsModified = false;

                _context.Entry(updUser).State = EntityState.Detached;

                _context.usuarios.Update(updUser);

                _context.SaveChanges();

                result = true;
            }
            catch (Exception)
            {
                result = false;
            }


            return Task.FromResult(result);
        }

        public Task<bool> RemoveUsuario(int id)
        {
            var usuario = _context.usuarios.Find(id);
            if (usuario == null)
            {
                return Task.FromResult(true);
            }

            _context.usuarios.Remove(usuario);
            _context.SaveChanges();

            return Task.FromResult(false);
        }

        public Task<Usuario> GetUsuarioById(int id)
        {
            var us = _context.usuarios.Find(id);

            if (us != null)
            {
                Usuario tb_user = new Usuario
                {
                    id = us.Id,
                    usuario = us.Usuario,
                    clave = us.Clave,
                    correo = us.Correo,
                    nombre = us.Nombre,
                    apePaterno = us.ApePaterno,
                    apeMaterno = us.ApeMaterno,
                    telefono = us.Telefono,
                    idRol = us.IdRol,
                    fecRegistro = us.FecRegistro,
                    fecModificacion = us.FecModificacion
                };

                _context.Entry(us).State = EntityState.Detached;

                return Task.FromResult(tb_user);
            }
            else
                return Task.FromResult<Usuario>(null);
        }

        public Task<Usuario> GetUsuarioByUsuario(string usuario)
        {
            try
            {
                var us = _context.usuarios.Where(x => x.Usuario.Trim().ToLower().Equals(usuario.ToLower())).FirstOrDefault();

                if (us != null)
                {
                    Usuario tb_user = new Usuario
                    {
                        id = us.Id,
                        usuario = us.Usuario,
                        clave = us.Clave,
                        nombre = us.Nombre,
                        apePaterno = us.ApePaterno,
                        apeMaterno = us.ApeMaterno,
                        correo = us.Correo,
                        telefono = us.Telefono,
                        idRol = us.IdRol,
                        fecRegistro = us.FecRegistro,
                        fecModificacion = us.FecModificacion
                    };

                    return Task.FromResult(tb_user);
                }

            }
            catch (Exception)
            {

                throw;
            }

            return Task.FromResult<Usuario>(null);
        }

        public Task<Usuario> GetUsuarioByCorreo(string correo)
        {
            try
            {
                var us = _context.usuarios.Where(x => x.Correo.Trim().ToLower().Equals(correo.ToLower())).FirstOrDefault();

                if (us != null)
                {
                    Usuario tb_user = new Usuario
                    {
                        id = us.Id,
                        usuario = us.Usuario,
                        clave = us.Clave,
                        correo = us.Correo,
                        nombre = us.Nombre,
                        apePaterno = us.ApePaterno,
                        apeMaterno = us.ApeMaterno,
                        telefono = us.Telefono,
                        idRol = us.IdRol,
                        fecRegistro = us.FecRegistro,
                        fecModificacion = us.FecModificacion
                    };

                    return Task.FromResult(tb_user);
                }

            }
            catch (Exception)
            {

                throw;
            }

            return Task.FromResult<Usuario>(null);
        }

        public async Task<List<Usuario>> GetUsuarios()
        {
            List<Usuario> usuarios = new List<Usuario>();

            try
            {
                var result = await Task.Run(() => _context.usuarios.ToListAsync());

                foreach (var us in result)
                {
                    usuarios.Add(new Usuario
                    {
                        id = us.Id,
                        usuario = us.Usuario,
                        clave = us.Clave,
                        correo = us.Correo,
                        nombre = us.Nombre,
                        apePaterno = us.ApePaterno,
                        apeMaterno = us.ApeMaterno,
                        telefono = us.Telefono,
                        idRol = us.IdRol,
                        fecRegistro = us.FecRegistro,
                        fecModificacion = us.FecModificacion
                    });
                }
            }
            catch (Exception)
            {

            }


            return usuarios;
        }

        public Task<bool> UpdateContraseña(string correo, string nuevaContraseña)
        {
            bool result = false;
            try
            {
                var usuario = _context.usuarios.Where(x => x.Correo.Trim().ToLower().Equals(correo.ToLower())).FirstOrDefault();

                if (usuario != null)
                {
                    usuario.Clave = nuevaContraseña.Trim();
                    usuario.FecModificacion = DateTime.Now;

                    _context.Update(usuario);
                    _context.SaveChanges();

                    result = true;
                }
            }
            catch (Exception)
            {
                result = false;
            }

            return Task.FromResult(result);
        }

    }
}
