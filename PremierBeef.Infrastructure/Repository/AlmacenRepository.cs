using Microsoft.EntityFrameworkCore;
using PremierBeef.Core.Entities;
using PremierBeef.Core.Interfaces;
using PremierBeef.Infrastructure.Data;
using PremierBeef.Infrastructure.Models;

namespace PremierBeef.Infrastructure.Repository
{
    public class AlmacenRepository : IAlmacenRepository
    {
        private readonly PremierContext _context;

        public AlmacenRepository(PremierContext context)
        {
            _context = context;
        }

        public Task<int> AddAlmacen(Almacen us)
        {
            int newId = 0;
            tb_almacen tb_cli = new tb_almacen
            {
                Nombre = us.nombre,
                Descripcion = us.descripcion,
                Direccion = us.direccion,
                Telefono = us.telefono,
                Estado = us.estado,
                FecRegistro = us.fecRegistro,
                FecModificacion = us.fecModificacion
            };

            try
            {
                _context.almacenes.Add(tb_cli);
                _context.SaveChanges();

                newId = tb_cli.Id;
            }
            catch (Exception)
            {
                tb_cli.Id = 0;
            }

            return Task.FromResult(newId);
        }

        public Task<int> UpdateAlmacen(Almacen us)
        {
            tb_almacen tb_cli = new tb_almacen
            {
                Id = us.id,
                Nombre = us.nombre,
                Descripcion = us.descripcion,
                Direccion = us.direccion,
                Telefono = us.telefono,
                Estado = us.estado,
                FecRegistro = us.fecRegistro,
                FecModificacion = DateTime.Now
            };

            try
            {
                //var dbEntry = _context.Entry(tb_cli);

                //dbEntry.Property(x => x.Id).IsModified = false;
                //dbEntry.Property(x => x.FecRegistro).IsModified = false;
                _context.almacenes.Attach(tb_cli);
                _context.Entry(tb_cli).State = EntityState.Modified;
                _context.Entry(tb_cli).Property(x => x.Id).IsModified = false;
                _context.Entry(tb_cli).Property(X => X.FecRegistro).IsModified = false;

                _context.almacenes.Update(tb_cli);
                _context.SaveChanges();
            }
            catch (Exception)
            {

            }


            return Task.FromResult(0);
        }

        public Task<int> RemoveAlmacen(int id)
        {
            var Almacen = _context.almacenes.Find(id);
            if (Almacen == null)
            {
                return Task.FromResult(1);
            }

            _context.almacenes.Remove(Almacen);
            _context.SaveChanges();

            return Task.FromResult(0);
        }

        public Task<Almacen> GetAlmacenById(int id)
        {
            var us = _context.almacenes.Find(id);

            if (us != null)
            {
                Almacen tb_cli = new Almacen
                {
                    id = us.Id,
                    nombre = us.Nombre,
                    descripcion = us.Descripcion,
                    direccion = us.Direccion,
                    telefono = us.Telefono,
                    estado = us.Estado,
                    fecRegistro = us.FecRegistro,
                    fecModificacion = us.FecModificacion
                };

                return Task.FromResult(tb_cli);
            }
            else
                return Task.FromResult<Almacen>(null);
        }

        public Task<Almacen> GetAlmacenByAlmacen(string Almacen)
        {
            try
            {
                var us = _context.almacenes.Where(x => x.Nombre.Trim().ToLower().Equals(Almacen.ToLower())).FirstOrDefault();

                if (us != null)
                {
                    Almacen tb_cli = new Almacen
                    {
                        id = us.Id,
                        nombre = us.Nombre,
                        descripcion = us.Descripcion,
                        direccion = us.Direccion,
                        telefono = us.Telefono,
                        estado = us.Estado,
                        fecRegistro = us.FecRegistro,
                        fecModificacion = us.FecModificacion
                    };

                    return Task.FromResult(tb_cli);
                }

            }
            catch (Exception)
            {
                return Task.FromResult<Almacen>(null);
            }

            return Task.FromResult<Almacen>(null);
        }

        public async Task<List<Almacen>> GetAlmacens()
        {
            List<Almacen> almacenes = new List<Almacen>();

            try
            {
                var result = await Task.Run(() => _context.almacenes.ToListAsync());

                foreach (var us in result)
                {
                    almacenes.Add(new Almacen
                    {
                        id = us.Id,
                        nombre = us.Nombre,
                        descripcion = us.Descripcion,
                        direccion = us.Direccion,
                        telefono = us.Telefono,
                        estado = us.Estado,
                        fecRegistro = us.FecRegistro,
                        fecModificacion = us.FecModificacion
                    });
                }
            }
            catch (Exception)
            {
                almacenes = new List<Almacen>();
            }

            return almacenes;
        }
    }
}
