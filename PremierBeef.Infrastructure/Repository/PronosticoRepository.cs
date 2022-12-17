using Microsoft.EntityFrameworkCore;
using PremierBeef.Core.Entities;
using PremierBeef.Infrastructure.Data;
using PremierBeef.Infrastructure.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PremierBeef.Infrastructure.Repository
{
    public class PronosticoRepository
    {
        private readonly PremierContext _context;

        public PronosticoRepository(PremierContext context)
        {
            _context = context;
        }

        public Task<int> AddPronostico(Pronostico us)
        {
            int newId = 0;
            tb_pronostico tb_pronostico = new tb_pronostico
            {
                NombreArchivoSalida = us.nombreArchivoSalida,
                Estado = us.estado,
                FecRegistro = us.fecRegistro
            };

            try
            {
                _context.pronosticos.Add(tb_pronostico);
                _context.SaveChanges();

                newId = tb_pronostico.Id;
            }
            catch (Exception)
            {
                tb_pronostico.Id = 0;
            }

            return Task.FromResult(newId);
        }

        public Task<bool> AddPronosticoDetalle(PronosticoDetalle us)
        {
            bool result = false;
            tb_pronostico_detalle tb_user = new tb_pronostico_detalle
            {
                Fecha = us.fecha,
                Cantidad = us.cantidad,
                Estado = us.estado,
                IdPronostico = us.idPronostico
            };

            try
            {
                _context.pronosticosDetalle.Add(tb_user);
                _context.SaveChanges();

                result = true;
            }
            catch (Exception)
            {
                result = false;
            }

            return Task.FromResult(result);
        }

        public async Task<List<PronosticoDetalle>> GetPronosticosDetalleById(int id)
        {
            List<PronosticoDetalle> pronosticos = new List<PronosticoDetalle>();

            try
            {

                var result = await Task.Run(() => _context.pronosticosDetalle.Where(x => x.IdPronostico.Equals(id) && x.Estado).ToListAsync());

                foreach (var us in result)
                {
                    pronosticos.Add(new PronosticoDetalle
                    {
                        id = us.Id,
                        cantidad = us.Cantidad,
                        fecha = us.Fecha,
                        idPronostico = us.IdPronostico
                    });
                }
            }
            catch (Exception)
            {
                
            }

            return pronosticos;
        }

        public async Task<List<PronosticoDetalle>> GetPronosticos()
        {
            List<PronosticoDetalle> pronosticos = new List<PronosticoDetalle>();

            try
            {

                var result = await Task.Run(() => _context.pronosticosDetalle.Where(x => x.Estado).ToListAsync());

                foreach (var us in result)
                {
                    pronosticos.Add(new PronosticoDetalle
                    {
                        id = us.Id,
                        cantidad = us.Cantidad,
                        fecha = us.Fecha,
                        idPronostico = us.IdPronostico
                    });
                }
            }
            catch (Exception)
            {

            }

            return pronosticos;
        }
    }
}
