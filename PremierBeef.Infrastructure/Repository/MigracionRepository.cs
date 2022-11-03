using Microsoft.EntityFrameworkCore;
using PremierBeef.Core.Entities;
using PremierBeef.Core.Entities.Constantes;
using PremierBeef.Core.Interfaces;
using PremierBeef.Infrastructure.Data;
using PremierBeef.Infrastructure.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static PremierBeef.Core.Entities.Constantes.Constantes;

namespace PremierBeef.Infrastructure.Repository
{
    public class MigracionRepository : IMigracionRepository
    {
        private readonly PremierContext _context;

        public MigracionRepository(PremierContext context)
        {
            _context = context;
        }

        public Task<int> AddMigracion(Migracion us)
        {
            int newId = 0;
            tb_migracion tb_archi = new tb_migracion
            {
                NombreArchivo = us.nombreArchivo,
                RutaArchivo = us.rutaArchivo,
                FecInicio = us.fecInicio,
                FecFin = us.fecFin,
                Estado = us.estado,
                TotalFilas = us.totalFilas,
                TotalObservaciones = us.totalObservaciones,
                TotalRegistradas = us.totalRegistradas,
                TipoArchivo = us.tipoArchivo
            };

            try
            {
                _context.migraciones.Add(tb_archi);
                _context.SaveChanges();

                newId = tb_archi.Id;
            }
            catch (Exception)
            {
                tb_archi.Id = 0;
            }

            return Task.FromResult(newId);
        }

        public Task<bool> UpdateMigracion(Migracion us)
        {
            bool result = false;

            try
            {
                var migracion = _context.migraciones.Find(us.id);

                if (migracion != null)
                {
                    migracion.TipoArchivo = us.tipoArchivo != 0 ? us.tipoArchivo : migracion.TipoArchivo;
                    migracion.Estado = us.estado;
                    migracion.TotalFilas = us.estado == (int)MigracionEstados.Finalizado ? us.totalFilas : migracion.TotalFilas;
                    migracion.TotalObservaciones = us.estado == (int)MigracionEstados.Finalizado ? us.totalObservaciones : migracion.TotalObservaciones;
                    migracion.TotalRegistradas = us.estado == (int)MigracionEstados.Finalizado ? us.totalRegistradas : migracion.TotalRegistradas;
                    migracion.FecInicio = us.estado == (int)MigracionEstados.Iniciado ? us.fecInicio : migracion.FecInicio;
                    migracion.FecFin = us.estado == (int)MigracionEstados.Finalizado ? us.fecFin : migracion.FecFin;

                    _context.migraciones.Attach(migracion);

                    _context.migraciones.Update(migracion);

                    var sds = _context.SaveChanges();

                    result = true;
                }
            }
            catch (Exception)
            {

            }

            return Task.FromResult(result);
        }

        public Task<bool> RemoveMigracion(int id)
        {
            bool result = false;
            try
            {
                var usuario = _context.migraciones.Find(id);
                if (usuario == null)
                {
                    return Task.FromResult(true);
                }

                _context.migraciones.Remove(usuario);
                _context.SaveChanges();

                result = true;
            }
            catch (Exception)
            {
                result = false;
            }
            return Task.FromResult(result);
        }

        public Task<Migracion> GetMigracionByArchivo(string archivo)
        {
            try
            {
                var us = _context.migraciones.Where(x => x.NombreArchivo.Equals(archivo)).FirstOrDefault();

                if (us != null)
                {
                    Migracion tb_user = new Migracion
                    {
                        id = us.Id,
                        nombreArchivo = us.NombreArchivo,
                        rutaArchivo = us.RutaArchivo,
                        tipoArchivo = us.TipoArchivo,
                        totalFilas = us.TotalFilas,
                        totalObservaciones = us.TotalObservaciones,
                        totalRegistradas = us.TotalRegistradas,
                        estado = us.Estado,
                        fecInicio = us.FecInicio,
                        fecFin = us.FecFin
                    };

                    return Task.FromResult(tb_user);
                }

            }
            catch (Exception)
            {

                throw;
            }

            return Task.FromResult<Migracion>(null);
        }

        public async Task<List<Migracion>> GetMigraciones()
        {
            List<Migracion> usuarios = new List<Migracion>();

            try
            {
                var result = await Task.Run(() => _context.migraciones.AsNoTracking().ToListAsync());

                foreach (var us in result)
                {
                    usuarios.Add(new Migracion
                    {
                        id = us.Id,
                        nombreArchivo = us.NombreArchivo,
                        rutaArchivo = us.RutaArchivo,
                        tipoArchivo = us.TipoArchivo,
                        totalFilas = us.TotalFilas,
                        totalObservaciones = us.TotalObservaciones,
                        totalRegistradas = us.TotalRegistradas,
                        estado = us.Estado,
                        fecInicio = us.FecInicio,
                        fecFin = us.FecFin
                    });
                }
            }
            catch (Exception)
            {

            }


            return usuarios;
        }
    }
}
