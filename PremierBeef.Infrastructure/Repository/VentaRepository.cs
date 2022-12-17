using Microsoft.EntityFrameworkCore;
using PremierBeef.Core.Entities;
using PremierBeef.Core.Interfaces;
using PremierBeef.Infrastructure.Data;
using PremierBeef.Infrastructure.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PremierBeef.Infrastructure.Repository
{
    public class VentaRepository : IVentaRepository
    {
        private readonly PremierContext _context;

        public VentaRepository(PremierContext context)
        {
            _context = context;
        }

        public Task<int> AddVenta(Venta us)
        {
            int newId = 0;
            tb_venta tb_user = new tb_venta
            {
                IdPedido = us.idPedido,
                ComprobanteVenta = us.comprobanteVenta,
                SerieComprobante = us.serieComprobante,
                NumeroComprobante = us.numeroComprobante,
                ImporteGrabado = us.importeGrabado,
                ImporteIGV = us.importeIGV,
                ImporteTotal = us.importeTotal,
                IdTipoComprobante = us.idTipoComprobante,
                FecVenta = us.fecVenta,
                FecRegistro = us.fecRegistro,
                FecModificacion = us.fecModificacion
            };

            try
            {
                _context.ventas.Add(tb_user);
                _context.SaveChanges();

                newId = tb_user.Id;
            }
            catch (Exception)
            {
                tb_user.Id = 0;
            }

            return Task.FromResult(newId);
        }

        public Task<Venta> GetVentaByComprobante(string comprobante)
        {
            try
            {
                var us = _context.ventas.Where(x => x.ComprobanteVenta.Trim().ToLower().Equals(comprobante.Trim().ToLower())).FirstOrDefault();

                if (us != null)
                {
                    Venta tb_user = new Venta
                    {
                        id = us.Id,
                        idPedido = us.IdPedido,
                        comprobanteVenta = us.ComprobanteVenta,
                        serieComprobante = us.SerieComprobante,
                        numeroComprobante = us.NumeroComprobante,
                        importeGrabado = us.ImporteGrabado,
                        importeIGV = us.ImporteIGV,
                        importeTotal = us.ImporteTotal,
                        idTipoComprobante = us.IdTipoComprobante,
                        fecVenta = us.FecVenta,
                        fecRegistro = us.FecRegistro,
                        fecModificacion = us.FecModificacion
                    };

                    return Task.FromResult(tb_user);
                }

            }
            catch (Exception)
            {

            }

            return Task.FromResult<Venta>(null);

        }
    }
}
