using PremierBeef.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PremierBeef.Core.Interfaces
{
    public interface ITipoComprobanteRepository
    {
        Task<List<TipoComprobante>> GetTipoComprobantes();
    }
}
