using Microsoft.EntityFrameworkCore;
using PremierBeef.Core.Entities;
using PremierBeef.Core.Interfaces;
using PremierBeef.Infrastructure.Data;
using PremierBeef.Infrastructure.Models;

namespace PremierBeef.Infrastructure.Repository
{
    public class ReclamoRepository : IReclamoRepository
    {
        private readonly PremierContext _context;

        public ReclamoRepository(PremierContext context)
        {
            _context = context;
        }

        public Task<int> AddReclamo(Reclamo us)
        {
            int newId = 0;
            tb_reclamo tb_cli = new tb_reclamo
            {
                Detalle = us.detalle,
                IdUsuario = us.idUsuario,
                IdPedido = us.idPedido,
                IdTipoReclamo = us.idTipoReclamo,
                IdUsuarioRespuesta = us.idUsuarioRespuesta,
                Respuesta = us.respuesta,
                FecRegistro = us.fecRegistro,
                FecModificacion = us.fecModificacion
            };

            try
            {
                _context.reclamos.Add(tb_cli);
                _context.SaveChanges();

                newId = tb_cli.Id;
            }
            catch (Exception)
            {
                tb_cli.Id = 0;
            }

            return Task.FromResult(newId);
        }

        public Task<int> UpdateReclamo(Reclamo us)
        {
            tb_reclamo tb_cli = new tb_reclamo
            {
                Detalle = us.detalle,
                IdUsuario = us.idUsuario,
                IdPedido = us.idPedido,
                IdTipoReclamo = us.idTipoReclamo,
                Respuesta = us.respuesta,
                IdUsuarioRespuesta = us.idUsuarioRespuesta,
                FecRegistro = us.fecRegistro,
                FecModificacion = DateTime.Now,
                FecReclamo = us.fecReclamo,
                FecRespuesta = us.fecRespuesta,
                Estado = us.estado,
                EstadoReclamo = us.estadoReclamo
            };

            try
            {
                //var dbEntry = _context.Entry(tb_cli);

                //dbEntry.Property(x => x.Id).IsModified = false;
                //dbEntry.Property(x => x.FecRegistro).IsModified = false;
                _context.reclamos.Attach(tb_cli);
                _context.Entry(tb_cli).State = EntityState.Modified;
                _context.Entry(tb_cli).Property(x => x.Id).IsModified = false;
                _context.Entry(tb_cli).Property(X => X.FecRegistro).IsModified = false;

                _context.reclamos.Update(tb_cli);
                _context.SaveChanges();
            }
            catch (Exception)
            {

            }


            return Task.FromResult(0);
        }

        public Task<int> RemoveReclamo(int id)
        {
            var Reclamo = _context.reclamos.Find(id);
            if (Reclamo == null)
            {
                return Task.FromResult(1);
            }

            _context.reclamos.Remove(Reclamo);
            _context.SaveChanges();

            return Task.FromResult(0);
        }

        public Task<Reclamo> GetReclamoById(int id)
        {
            var us = _context.reclamos.Find(id);

            if (us != null)
            {
                Reclamo tb_cli = new Reclamo
                {
                    id = us.Id,
                    detalle = us.Detalle,
                    idUsuario = us.IdUsuario,
                    idPedido = us.IdPedido,
                    idTipoReclamo = us.IdTipoReclamo,
                    idUsuarioRespuesta = us.IdUsuarioRespuesta,
                    respuesta = us.Respuesta,
                    fecRegistro = us.FecRegistro,
                    fecModificacion = us.FecModificacion,
                    fecReclamo = us.FecReclamo,
                    fecRespuesta = us.FecRespuesta,
                    estado = us.Estado,
                    estadoReclamo = us.EstadoReclamo
                };

                return Task.FromResult(tb_cli);
            }
            else
                return Task.FromResult<Reclamo>(null);
        }

        public async Task<List<Reclamo>> GetReclamos()
        {
            List<Reclamo> reclamos = new List<Reclamo>();

            try
            {
                var result = await Task.Run(() => _context.reclamos.ToListAsync());

                foreach (var us in result)
                {
                    reclamos.Add(new Reclamo
                    {
                        id = us.Id,
                        detalle = us.Detalle,
                        idUsuario = us.IdUsuario,
                        idPedido = us.IdPedido,
                        idTipoReclamo = us.IdTipoReclamo,
                        idUsuarioRespuesta = us.IdUsuarioRespuesta,
                        respuesta = us.Respuesta,
                        fecRegistro = us.FecRegistro,
                        fecModificacion = us.FecModificacion,
                        fecReclamo = us.FecReclamo,
                        fecRespuesta = us.FecRespuesta,
                        estado = us.Estado,
                        estadoReclamo = us.EstadoReclamo
                    });
                }
            }
            catch (Exception)
            {

            }


            return reclamos;
        }
    }
}
