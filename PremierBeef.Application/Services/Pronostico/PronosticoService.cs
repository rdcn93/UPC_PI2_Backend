using PremierBeef.Application.InputModel;
using PremierBeef.Application.ViewModels;
using PremierBeef.Core.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace PremierBeef.Application.Services.Pronostico
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "PronosticoService" en el código y en el archivo de configuración a la vez.
    public class PronosticoService : IPronosticoService
    {
        private readonly IPronosticoRepository _pronosticoRepository;

        public PronosticoService(IPronosticoRepository pronosticoRepository)
        {
            _pronosticoRepository = pronosticoRepository;
        }

        public async Task<int> AddPronostico(PronosticoModel newU)
        {
            Core.Entities.Pronostico pronostico = new Core.Entities.Pronostico
            {
                nombreArchivoSalida = newU.nombreArchivoSalida,
                estado = true,
                fecRegistro = DateTime.Now
            };
            var id = await _pronosticoRepository.AddPronostico(pronostico);

            return id;
        }

        public async Task<bool> AddPronosticoDetalle(PronosticoDetalleModel newU)
        {
            Core.Entities.PronosticoDetalle pronostico = new Core.Entities.PronosticoDetalle
            {
                cantidad = newU.cantidad,
                estado = true,
                fecha = DateTime.Now,
                idPronostico = newU.idPronostico
            };
            var result = await _pronosticoRepository.AddPronosticoDetalle(pronostico);

            return result;
        }

        public async Task<List<PronosticoViewModel>> GetPronosticosById()
        {
            int idPronosticoActivo = 0;
            var products = await _pronosticoRepository.GetPronosticosDetalleById(idPronosticoActivo);

            var productsM = products
                .Select(u => new PronosticoViewModel(u))
                .ToList();

            return productsM;
        }

        public async Task<List<PronosticoViewModel>> GetPronosticos()
        {
            int idPronosticoActivo = 0;
            var products = await _pronosticoRepository.GetPronosticos();

            var productsM = products
                .Select(u => new PronosticoViewModel(u))
                .ToList();

            return productsM;
        }
    }
}
