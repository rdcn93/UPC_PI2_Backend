using PremierBeef.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PremierBeef.Core.Interfaces
{
    public interface IPedidoRepository
    {
        Task<int> AddPedido(Pedido us);
        Task<Pedido> GetPedidoByComprobante(string comprobante);
        Task<bool> AddPedidoDetalle(PedidoDetalle us);
        Task<bool> ExistePedidoDetalle(int idPedido, int idProducto);
    }
}
