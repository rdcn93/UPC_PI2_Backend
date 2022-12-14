using PremierBeef.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PremierBeef.Core.Interfaces
{
    public interface IPronosticoRepository
    {
        Task<int> AddPronostico(Pronostico us);
        Task<bool> AddPronosticoDetalle(PronosticoDetalle us);
        Task<List<PronosticoDetalle>> GetPronosticosDetalleById(int id);
        Task<List<PronosticoDetalle>> GetPronosticos();
    }
}
