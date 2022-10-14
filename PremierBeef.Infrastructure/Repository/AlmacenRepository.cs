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

        public Task<bool> UpdateAlmacen(Almacen al)
        {
            bool result = false;

            try
            {
                var almacen = _context.almacenes.Find(al.id);

                if (almacen != null)
                {
                    almacen.Nombre = al.nombre;
                    almacen.Descripcion = al.descripcion;
                    almacen.Direccion = al.direccion;
                    almacen.FecRegistro = almacen.FecRegistro;
                    almacen.FecModificacion = DateTime.Now;
                    almacen.Telefono = al.telefono;
                    almacen.Estado = true;


                    _context.almacenes.Attach(almacen);
                    _context.Entry(almacen).State = EntityState.Modified;
                    _context.Entry(almacen).Property(x => x.Id).IsModified = false;
                    _context.Entry(almacen).Property(X => X.FecRegistro).IsModified = false;

                    _context.Entry(almacen).State = EntityState.Detached;

                    _context.almacenes.Update(almacen);

                    var sds = _context.SaveChanges();

                    result = true;
                }
            }
            catch (Exception)
            {

            }

            return Task.FromResult(result);
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
