using Microsoft.EntityFrameworkCore;
using PremierBeef.Core.Entities;
using PremierBeef.Core.Interfaces;
using PremierBeef.Infrastructure.Data;
using PremierBeef.Infrastructure.Models;
using System.Security.Cryptography.X509Certificates;

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
                FecModificacion = us.fecModificacion,
                Estado = us.estado,
                EstadoReclamo = us.estadoReclamo,
                FecReclamo = us.fecReclamo
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
            //tb_reclamo tb_cli = new tb_reclamo
            //{
            //    Id = us.id,
            //    Detalle = us.detalle,
            //    IdUsuario = us.idUsuario,
            //    IdPedido = us.idPedido,
            //    IdTipoReclamo = us.idTipoReclamo,
            //    Respuesta = us.respuesta,
            //    IdUsuarioRespuesta = us.idUsuarioRespuesta,
            //    FecRegistro = us.fecRegistro,
            //    FecModificacion = DateTime.Now,
            //    FecReclamo = us.fecReclamo,
            //    FecRespuesta = us.fecRespuesta,
            //    Estado = us.estado,
            //    EstadoReclamo = us.estadoReclamo
            //};

            try
            {
                var reclamo = _context.reclamos.Find(us.id);

                if(reclamo != null)
                {
                    reclamo.Detalle = us.detalle;
                    reclamo.IdUsuario = us.idUsuario;
                    reclamo.IdPedido = us.idPedido;
                    reclamo.IdTipoReclamo = us.idTipoReclamo;
                    reclamo.Respuesta = us.respuesta;
                    reclamo.IdUsuarioRespuesta = us.idUsuarioRespuesta;
                    reclamo.FecModificacion = DateTime.Now;
                    reclamo.FecRespuesta = us.fecRespuesta;
                    reclamo.Estado = us.estado;
                    reclamo.EstadoReclamo = us.estadoReclamo;


                    _context.reclamos.Attach(reclamo);
                    _context.Entry(reclamo).State = EntityState.Modified;
                    _context.Entry(reclamo).Property(x => x.Id).IsModified = false;
                    _context.Entry(reclamo).Property(X => X.FecRegistro).IsModified = false;
                    _context.Entry(reclamo).Property(X => X.FecReclamo).IsModified = false;

                    _context.Entry(reclamo).State = EntityState.Detached;

                    _context.reclamos.Update(reclamo);

                    _context.SaveChanges();
                }                
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
                reclamos = await Task.Run(() => _context.reclamos
                                            .Join(_context.reclamoTipos, ai => ai.IdTipoReclamo,
                                                  al => al.Id, (ai, al) => new
                                                  {
                                                      id = ai.Id,
                                                      detalle = ai.Detalle,
                                                      idUsuario = ai.IdUsuario,
                                                      idPedido = ai.IdPedido,
                                                      idTipoReclamo = ai.IdTipoReclamo,
                                                      idUsuarioRespuesta = ai.IdUsuarioRespuesta,
                                                      respuesta = ai.Respuesta,
                                                      fecRegistro = ai.FecRegistro,
                                                      fecModificacion = ai.FecModificacion,
                                                      fecReclamo = ai.FecReclamo,
                                                      fecRespuesta = ai.FecRespuesta,
                                                      estado = ai.Estado,
                                                      estadoReclamo = ai.EstadoReclamo,
                                                      tipoReclamo = al.Nombre
                                                  }).Select(x => new Reclamo()
                                                    {
                                                      id = x.id,
                                                      detalle = x.detalle,
                                                      idUsuario = x.idUsuario,
                                                      idPedido = x.idPedido,
                                                      idTipoReclamo = x.idTipoReclamo,
                                                      idUsuarioRespuesta = x.idUsuarioRespuesta,
                                                      respuesta = x.respuesta,
                                                      fecRegistro = x.fecRegistro,
                                                      fecModificacion = x.fecModificacion,
                                                      fecReclamo = x.fecReclamo,
                                                      fecRespuesta = x.fecRespuesta,
                                                      estado = x.estado,
                                                      estadoReclamo = x.estadoReclamo,
                                                      tipoReclamo = x.tipoReclamo
                                                  })
                                            .ToList());

                //var result = await Task.Run(() => _context.reclamos.ToListAsync());
                //var result = (from d in _context.reclamos
                //                 join f in _context.reclamoTipos
                //                 on d.IdTipoReclamo equals f.Id
                //                 //where f.Location == "Texas"
                //                 select d).ToList();

                //foreach (var us in result)
                //{
                //    reclamos.Add(new Reclamo
                //    {
                //        id = us.Id,
                //        detalle = us.Detalle,
                //        idUsuario = us.IdUsuario,
                //        idPedido = us.IdPedido,
                //        idTipoReclamo = us.IdTipoReclamo,
                //        idUsuarioRespuesta = us.IdUsuarioRespuesta,
                //        respuesta = us.Respuesta,
                //        fecRegistro = us.FecRegistro,
                //        fecModificacion = us.FecModificacion,
                //        fecReclamo = us.FecReclamo,
                //        fecRespuesta = us.FecRespuesta,
                //        estado = us.Estado,
                //        estadoReclamo = us.EstadoReclamo
                //    });
                //}
            }
            catch (Exception)
            {

            }


            return reclamos;
        }
    }
}
