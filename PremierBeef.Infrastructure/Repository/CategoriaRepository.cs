using Microsoft.EntityFrameworkCore;
using PremierBeef.Core.Entities;
using PremierBeef.Core.Interfaces;
using PremierBeef.Infrastructure.Data;
using PremierBeef.Infrastructure.Models;

namespace PremierBeef.Infrastructure.Repository
{
    public class CategoriaRepository : ICategoriaRepository
    {
        private readonly PremierContext _context;

        public CategoriaRepository(PremierContext context)
        {
            _context = context;
        }

        public Task<int> AddCategoria(Categoria us)
        {
            int newId = 0;
            tb_producto_categoria tb_cli = new tb_producto_categoria
            {
                Nombre = us.nombre,
                Descripcion = us.descripcion,
                Estado = us.estado
            };

            try
            {
                _context.categorias.Add(tb_cli);
                _context.SaveChanges();

                newId = tb_cli.Id;
            }
            catch (Exception)
            {
                tb_cli.Id = 0;
            }

            return Task.FromResult(newId);
        }

        public Task<int> UpdateCategoria(Categoria us)
        {
            tb_producto_categoria tb_cli = new tb_producto_categoria
            {
                Id = us.id,
                Nombre = us.nombre,
                Descripcion = us.descripcion,
                Estado = us.estado,
                //FecRegistro = us.fecRegistro,
                //FecModificacion = DateTime.Now
            };

            try
            {
                //var dbEntry = _context.Entry(tb_cli);

                //dbEntry.Property(x => x.Id).IsModified = false;
                //dbEntry.Property(x => x.FecRegistro).IsModified = false;
                _context.categorias.Attach(tb_cli);
                _context.Entry(tb_cli).State = EntityState.Modified;
                _context.Entry(tb_cli).Property(x => x.Id).IsModified = false;
                //_context.Entry(tb_cli).Property(X => X.FecRegistro).IsModified = false;

                _context.categorias.Update(tb_cli);
                _context.SaveChanges();
            }
            catch (Exception)
            {

            }


            return Task.FromResult(0);
        }

        public Task<int> RemoveCategoria(int id)
        {
            var Categoria = _context.categorias.Find(id);
            if (Categoria == null)
            {
                return Task.FromResult(1);
            }

            _context.categorias.Remove(Categoria);
            _context.SaveChanges();

            return Task.FromResult(0);
        }

        public Task<Categoria> GetCategoriaById(int id)
        {
            var us = _context.categorias.Find(id);

            if (us != null)
            {
                Categoria tb_cli = new Categoria
                {
                    id = us.Id,
                    nombre = us.Nombre,
                    descripcion = us.Descripcion,
                    estado = us.Estado,
                    //fecRegistro = us.FecRegistro,
                    //fecModificacion = us.FecModificacion
                };

                return Task.FromResult(tb_cli);
            }
            else
                return Task.FromResult<Categoria>(null);
        }

        public Task<Categoria> GetCategoriaByCategoria(string categoria)
        {
            try
            {
                var us = _context.categorias.Where(x => x.Nombre.Trim().ToLower().Equals(categoria.ToLower())).FirstOrDefault();

                if (us != null)
                {
                    Categoria tb_cli = new Categoria
                    {
                        id = us.Id,
                        nombre = us.Nombre,
                        descripcion = us.Descripcion,
                        estado = us.Estado,
                        //fecRegistro = us.FecRegistro,
                        //fecModificacion = us.FecModificacion
                    };

                    return Task.FromResult(tb_cli);
                }

            }
            catch (Exception)
            {

                throw;
            }

            return Task.FromResult<Categoria>(null);

        }

        public async Task<List<Categoria>> GetCategorias()
        {
            List<Categoria> categorias = new List<Categoria>();

            try
            {
                var result = await Task.Run(() => _context.categorias.ToListAsync());

                foreach (var us in result)
                {
                    categorias.Add(new Categoria
                    {
                        id = us.Id,
                        nombre = us.Nombre,
                        descripcion = us.Descripcion,
                        estado = us.Estado,
                        //fecRegistro = us.FecRegistro,
                        //fecModificacion = us.FecModificacion
                    });
                }
            }
            catch (Exception)
            {

            }


            return categorias;
        }
    }
}
