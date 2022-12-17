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
    public class PedidoRepository : IPedidoRepository
    {
        private readonly PremierContext _context;

        public PedidoRepository(PremierContext context)
        {
            _context = context;
        }

        public Task<int> AddPedido(Pedido us)
        {
            int newId = 0;
            tb_pedido tb_user = new tb_pedido
            {
                DireccionEnvio = us.direccionEnvio,
                Estado = us.estado,
                IdUsuario = us.idUsuario,
                IdCliente = us.idCliente,
                IdAlmacenPedido = us.idAlmacenPedido,
                FecRegistro = us.fecRegistro,
                FecModificacion = us.fecModificacion
            };

            try
            {
                _context.pedidos.Add(tb_user);
                _context.SaveChanges();

                newId = tb_user.Id;
            }
            catch (Exception)
            {
                tb_user.Id = 0;
            }

            return Task.FromResult(newId);
        }

        public async Task<Pedido> GetPedidoByComprobante(string comprobante)
        {
            try
            {
                //var us = _context.pedidos.Where(x => x.DireccionEnvio.Trim().ToLower().Equals(comprobante.ToLower())).FirstOrDefault();

                //if (us != null)
                //{
                //    Pedido tb_ped = new Pedido
                //    {
                //        id = us.Id,
                //        direccionEnvio = us.DireccionEnvio,
                //        estado = us.Estado,
                //        idUsuario = us.IdUsuario,
                //        idCliente = us.IdCliente,
                //        idAlmacenPedido = us.IdAlmacenPedido,
                //        fecRegistro = us.FecRegistro,
                //        fecModificacion = us.FecModificacion
                //    };

                //    return Task.FromResult(tb_ped);
                //}

                var pedido = await Task.Run(() => _context.pedidos
                                            .Join(_context.ventas, ai => ai.Id,
                                                  al => al.IdPedido, (ai, al) => new
                                                  {
                                                      id = ai.Id,
                                                      direccionEnvio = ai.DireccionEnvio,
                                                      idUsuario = ai.IdUsuario,
                                                      idCliente = ai.IdCliente,
                                                      idAlmacenPedido = ai.IdAlmacenPedido,
                                                      fecRegistro = ai.FecRegistro,
                                                      fecModificacion = ai.FecModificacion,
                                                      comprobante = al.ComprobanteVenta
                                                  })
                                                    .Where(x => x.comprobante.Trim().Equals(comprobante))
                                                    .Select(x => new Pedido()
                                                          {
                                                              id = x.id,
                                                              direccionEnvio = x.direccionEnvio,
                                                              idUsuario = x.idUsuario,
                                                              idCliente = x.idCliente,
                                                              idAlmacenPedido = x.idAlmacenPedido,
                                                              fecRegistro = x.fecRegistro,
                                                              fecModificacion = x.fecModificacion,
                                                              comprobante = x.comprobante
                                                          })
                                                    .FirstOrDefault());

                return pedido;

            }
            catch (Exception)
            {

            }

            return null;

        }

        #region 
        public Task<bool> AddPedidoDetalle(PedidoDetalle us)
        {
            bool result = false;
            tb_pedido_detalle tb_user = new tb_pedido_detalle
            {
                IdPedido = us.idPedido,
                IdProducto = us.idProducto,
                Cantidad = us.cantidad,
                PrecioUnitario = us.precioUnitario,
                PesoMin = us.pesoMin,
                PesoMax = us.pesoMax,
                ImporteDescuento = us.importeDescuento,
                ImporteIGV = us.importeIGV,
                ImporteSubtotal = us.importeSubtotal,
                ImporteTotal = us.importeTotal,
                Estado = us.estado
            };

            try
            {
                _context.pedidosDetalle.Add(tb_user);
                _context.SaveChanges();

                result = true;
            }
            catch (Exception)
            {
                result = false;
            }

            return Task.FromResult(result);
        }

        public Task<bool> ExistePedidoDetalle(int idPedido, int idProducto)
        {
            bool result = false;
            var pedDet = _context.pedidosDetalle.Where(x => x.IdPedido == idPedido && x.IdProducto == idProducto).FirstOrDefault();

            try
            {
                return Task.FromResult(pedDet == null ? false : true);
            }
            catch (Exception)
            {
                result = false;
            }

            return Task.FromResult(result);
        }
        #endregion
    }
}
