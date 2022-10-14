using Microsoft.EntityFrameworkCore;
using PremierBeef.Core.Entities;
using PremierBeef.Core.Interfaces;
using PremierBeef.Infrastructure.Data;
using PremierBeef.Infrastructure.Models;

namespace PremierBeef.Infrastructure.Repository
{
    public class PromocionRepository : IPromocionRepository
    {
        private readonly PremierContext _context;

        public PromocionRepository(PremierContext context)
        {
            _context = context;
        }

        public async Task<List<Promocion>> GetPromociones()
        {
            List<Promocion> roles = new List<Promocion>();

            try
            {
                var result = await Task.Run(() => _context.promociones.ToListAsync());

                foreach (var us in result)
                {
                    roles.Add(new Promocion
                    {
                        id = us.Id,
                        nombre = us.Nombre ?? "",
                        descripcion = us.Descripcion ?? "",
                        fecInicio = us.FecInicio,
                        fecFin = us.FecFin,
                        porcentajeDescuento = us.PorcentajeDescuento,
                        fecInicioStr = us.FecInicio.ToString("MM/dd/yyyy"),
                        fecFinStr = us.FecFin.ToString("MM/dd/yyyy")
                    });
                }
            }
            catch (Exception)
            {

            }


            return roles;
        }

        public Task<int> AddPromocion(Promocion us)
        {
            int newId = 0;
            tb_promocion tb_cli = new tb_promocion
            {
                Nombre = us.nombre,
                Descripcion = us.descripcion,
                FecInicio = us.fecInicio,
                FecFin = us.fecFin,
                PorcentajeDescuento = us.porcentajeDescuento,
                Estado = true,
                FecRegistro = us.fecRegistro,
                FecModificacion = us.fecModificacion
            };

            try
            {
                _context.promociones.Add(tb_cli);
                _context.SaveChanges();

                newId = tb_cli.Id;
            }
            catch (Exception)
            {
                tb_cli.Id = 0;
            }

            return Task.FromResult(newId);
        }

        public Task<bool> UpdatePromocion(Promocion prom)
        {
            bool result = false;

            try
            {
                var promocion = _context.promociones.Find(prom.id);

                if (promocion != null)
                {
                    promocion.Nombre = prom.nombre;
                    promocion.Descripcion = prom.descripcion;
                    promocion.FecInicio = prom.fecInicio;
                    promocion.FecFin = prom.fecFin;
                    promocion.PorcentajeDescuento = prom.porcentajeDescuento;
                    promocion.Estado = promocion.Estado;
                    promocion.FecRegistro = promocion.FecRegistro;
                    promocion.FecModificacion = DateTime.Now;


                    _context.promociones.Attach(promocion);

                    _context.promociones.Update(promocion);

                    var sds = _context.SaveChanges();

                    result = true;
                }
            }
            catch (Exception)
            {

            }

            return Task.FromResult(result);
        }

        public Task<int> RemovePromocion(int id)
        {
            var Promocion = _context.promociones.Find(id);
            if (Promocion == null)
            {
                return Task.FromResult(1);
            }

            _context.promociones.Remove(Promocion);
            _context.SaveChanges();

            return Task.FromResult(0);
        }

        public Task<Promocion> GetPromocionById(int id)
        {
            var us = _context.promociones.Find(id);

            if (us != null)
            {
                Promocion tb_cli = new Promocion
                {
                    id = us.Id,
                    nombre = us.Nombre,
                    descripcion = us.Descripcion,
                    fecInicio = us.FecInicio,
                    fecFin = us.FecFin,
                    porcentajeDescuento = us.PorcentajeDescuento,
                    estado = us.Estado,
                    fecRegistro = us.FecRegistro,
                    fecModificacion = DateTime.Now
                };

                return Task.FromResult(tb_cli);
            }
            else
                return Task.FromResult<Promocion>(null);
        }

        public Task<Promocion> GetPromocionByPromocion(string promocion)
        {
            try
            {
                var us = _context.promociones.Where(x => x.Nombre.Trim().ToLower().Equals(promocion.ToLower())).FirstOrDefault();

                if (us != null)
                {
                    Promocion tb_cli = new Promocion
                    {
                        id = us.Id,
                        nombre = us.Nombre,
                        descripcion = us.Descripcion,
                        fecInicio = us.FecInicio,
                        fecFin = us.FecFin,
                        porcentajeDescuento = us.PorcentajeDescuento,
                        estado = us.Estado,
                        fecRegistro = us.FecRegistro,
                        fecModificacion = DateTime.Now
                    };

                    return Task.FromResult(tb_cli);
                }

            }
            catch (Exception)
            {

                throw;
            }

            return Task.FromResult<Promocion>(null);

        }

        public Task<bool> AddPromocionDetalle(PromocionDetalle us)
        {
            bool result = false;
            tb_promocion_detalle tb_cli = new tb_promocion_detalle
            {
                IdProducto = us.idProducto,
                IdPromocion = us.idPromocion,
                Estado = true
            };

            try
            {
                _context.promocionesDetalle.Add(tb_cli);
                _context.SaveChanges();

                result = true;
            }
            catch (Exception)
            {
            }

            return Task.FromResult(result);
        }

        public Task<bool> RemovePromocionDetalleTodo(int idProm)
        {
            bool result = false;

            try
            {
                var detalle = _context.promocionesDetalle.Where(x => x.IdPromocion == idProm).ToList();
                _context.promocionesDetalle.RemoveRange(detalle);
                _context.SaveChanges();

                result = true;
            }
            catch (Exception)
            {
            }

            return Task.FromResult(result);
        }

        public async Task<List<int>> GetPromocionProductosIds(int idPromocion)
        {
            List<int> productosIds = new List<int>();

            try
            {
                var result = await Task.Run(() => _context.promocionesDetalle.Where(x => x.IdPromocion == idPromocion).Select(y => y.IdProducto).ToListAsync());

                foreach (var us in result)
                {
                    productosIds.Add(us);
                }
            }
            catch (Exception)
            {

            }

            return productosIds;
        }
    }
}
