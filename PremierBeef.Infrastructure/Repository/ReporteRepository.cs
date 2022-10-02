using Microsoft.EntityFrameworkCore;
using PremierBeef.Core.Entities.Reportes;
using PremierBeef.Core.Interfaces;
using PremierBeef.Infrastructure.Data;

namespace PremierBeef.Infrastructure.Repository
{
    public class ReporteRepository : IReporteRepository
    {
        private readonly PremierContext _context;

        public ReporteRepository(PremierContext context)
        {
            _context = context;
        }

        public Task<List<ReporteVentas>> GetReporteVentas(FiltroReporte filtro)
        {
            List<ReporteVentas> reporte = new List<ReporteVentas>();
            try
            {
                var result = _context.dbo_GetReporteReclamos.FromSqlRaw("EXEC dbo.GetReporteReclamos {0}, {1}, {2}", filtro.fecInicio, filtro.fecFin, filtro.idPedido).ToList();


                if (result != null)
                {
                    foreach (var us in result)
                    {
                        reporte.Add(new ReporteVentas
                        {
                            id = us.Id,
                            detalle = us.Detalle,
                            usuarioRegistro = us.UsuarioRegistro,
                            usuarioRegistroCompleto = us.UsuarioRegistroCompleto,
                            fechaReclamo = us.FechaReclamo,
                            tipoReclamo = us.TipoReclamo,
                            pedido = us.Pedido,
                            cliente = us.Cliente,
                            respuesta = us.Respuesta,
                            usuarioRespuesta = us.UsuarioRespuesta,
                            usuarioRespuestaCompleto = us.UsuarioRespuestaCompleto,
                            fechaRespuesta = us.FechaRespuesta
                        });
                    }

                }
            }
            catch (Exception)
            {
                reporte = new List<ReporteVentas>();
            }

            return Task.FromResult(reporte);
        }

        public Task<List<ReportePedidos>> GetReportePedidos(FiltroReporte filtro)
        {
            List<ReportePedidos> reporte = new List<ReportePedidos>();
            try
            {
                var result = _context.dbo_GetReporteReclamos.FromSqlRaw("EXEC dbo.GetReporteReclamos {0}, {1}, {2}", filtro.fecInicio, filtro.fecFin, filtro.idPedido).ToList();


                if (result != null)
                {
                    foreach (var us in result)
                    {
                        reporte.Add(new ReportePedidos
                        {
                            id = us.Id,
                            detalle = us.Detalle,
                            usuarioRegistro = us.UsuarioRegistro,
                            usuarioRegistroCompleto = us.UsuarioRegistroCompleto,
                            fechaReclamo = us.FechaReclamo,
                            tipoReclamo = us.TipoReclamo,
                            pedido = us.Pedido,
                            cliente = us.Cliente,
                            respuesta = us.Respuesta,
                            usuarioRespuesta = us.UsuarioRespuesta,
                            usuarioRespuestaCompleto = us.UsuarioRespuestaCompleto,
                            fechaRespuesta = us.FechaRespuesta
                        });
                    }

                }
            }
            catch (Exception)
            {
                reporte = new List<ReportePedidos>();
            }

            return Task.FromResult(reporte);
        }

        public Task<List<ReporteStock>> GetReporteStock(FiltroReporte filtro)
        {
            List<ReporteStock> reporte = new List<ReporteStock>();
            try
            {
                var result = _context.dbo_GetReporteReclamos.FromSqlRaw("EXEC dbo.GetReporteReclamos {0}, {1}, {2}", filtro.fecInicio, filtro.fecFin, filtro.idPedido).ToList();


                if (result != null)
                {
                    foreach (var us in result)
                    {
                        reporte.Add(new ReporteStock
                        {
                            id = us.Id,
                            detalle = us.Detalle,
                            usuarioRegistro = us.UsuarioRegistro,
                            usuarioRegistroCompleto = us.UsuarioRegistroCompleto,
                            fechaReclamo = us.FechaReclamo,
                            tipoReclamo = us.TipoReclamo,
                            pedido = us.Pedido,
                            cliente = us.Cliente,
                            respuesta = us.Respuesta,
                            usuarioRespuesta = us.UsuarioRespuesta,
                            usuarioRespuestaCompleto = us.UsuarioRespuestaCompleto,
                            fechaRespuesta = us.FechaRespuesta
                        });
                    }

                }
            }
            catch (Exception)
            {
                reporte = new List<ReporteStock>();
            }

            return Task.FromResult(reporte);
        }

        public Task<List<ReporteReclamos>> GetReporteReclamos(FiltroReporte filtro)
        {
            List<ReporteReclamos> reporte = new List<ReporteReclamos>();
            try
            {
                var result = _context.dbo_GetReporteReclamos.FromSqlRaw("EXEC dbo.GetReporteReclamos {0}, {1}, {2}", filtro.fecInicio, filtro.fecFin, filtro.idPedido).ToList();


                if (result != null)
                {
                    foreach (var us in result)
                    {
                        reporte.Add(new ReporteReclamos
                        {
                            id = us.Id,
                            detalle = us.Detalle,
                            usuarioRegistro = us.UsuarioRegistro,
                            usuarioRegistroCompleto = us.UsuarioRegistroCompleto,
                            fechaReclamo = us.FechaReclamo,
                            tipoReclamo = us.TipoReclamo,
                            pedido = us.Pedido,
                            cliente = us.Cliente,
                            respuesta = us.Respuesta,
                            usuarioRespuesta = us.UsuarioRespuesta,
                            usuarioRespuestaCompleto = us.UsuarioRespuestaCompleto,
                            fechaRespuesta = us.FechaRespuesta
                        });
                    }

                }
            }
            catch (Exception)
            {
                reporte = new List<ReporteReclamos>();
            }

            return Task.FromResult(reporte);
        }

        public Task<List<ReporteDelivery>> GetReporteDelivery(FiltroReporte filtro)
        {
            List<ReporteDelivery> reporte = new List<ReporteDelivery>();
            try
            {
                var result = _context.dbo_GetReporteReclamos.FromSqlRaw("EXEC dbo.GetReporteReclamos {0}, {1}, {2}", filtro.fecInicio, filtro.fecFin, filtro.idPedido).ToList();


                if (result != null)
                {
                    foreach (var us in result)
                    {
                        reporte.Add(new ReporteDelivery
                        {
                            id = us.Id,
                            detalle = us.Detalle,
                            usuarioRegistro = us.UsuarioRegistro,
                            usuarioRegistroCompleto = us.UsuarioRegistroCompleto,
                            fechaReclamo = us.FechaReclamo,
                            tipoReclamo = us.TipoReclamo,
                            pedido = us.Pedido,
                            cliente = us.Cliente,
                            respuesta = us.Respuesta,
                            usuarioRespuesta = us.UsuarioRespuesta,
                            usuarioRespuestaCompleto = us.UsuarioRespuestaCompleto,
                            fechaRespuesta = us.FechaRespuesta
                        });
                    }

                }
            }
            catch (Exception)
            {
                reporte = new List<ReporteDelivery>();
            }

            return Task.FromResult(reporte);
        }

    }
}
