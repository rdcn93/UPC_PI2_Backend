using DocumentFormat.OpenXml.InkML;
using PremierBeef.Application.InputModel;
using PremierBeef.Application.ViewModels;
using PremierBeef.Core.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using static PremierBeef.Core.Entities.Constantes.Constantes;

namespace PremierBeef.Application.Services.Migracion
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "MigracionService" en el código y en el archivo de configuración a la vez.
    public class MigracionService : IMigracionService
    {
        private readonly IMigracionRepository _migracionRepository;


        public MigracionService(IMigracionRepository migracionRepository)
        {
            _migracionRepository = migracionRepository;
        }

        public async Task<int> AddMigracion(MigracionModel us)
        {
            Core.Entities.Migracion migracion = new Core.Entities.Migracion
            {
                nombreArchivo = us.nombreArchivo,
                rutaArchivo = us.rutaArchivo,
                fecInicio = us.fecInicio,
                fecFin = us.fecFin,
                estado = us.estado,
                totalFilas = us.totalFilas,
                totalObservaciones = us.totalObservaciones,
                totalRegistradas = us.totalRegistradas,
                tipoArchivo = us.tipoArchivo
            };

            var id = await _migracionRepository.AddMigracion(migracion);

            return id;
        }

        public async Task<bool> UpdateMigracion(MigracionModel us)
        {
            Core.Entities.Migracion migracion = new Core.Entities.Migracion
            {
                id = us.id,
                nombreArchivo = us.nombreArchivo,
                rutaArchivo = us.rutaArchivo,
                fecInicio = us.fecInicio,
                fecFin = us.fecFin,
                estado = us.estado,
                totalFilas = us.totalFilas,
                totalObservaciones = us.totalObservaciones,
                totalRegistradas = us.totalRegistradas,
                tipoArchivo = us.tipoArchivo
            };

            var result = await _migracionRepository.UpdateMigracion(migracion);

            return result;
        }

        public async Task<bool> RemoveMigracion(int id)
        {
            var result = await _migracionRepository.RemoveMigracion(id);

            return result;
        }

        public async Task<MigracionViewModel> GetMigracionByArchivo(string archivo)
        {
            MigracionViewModel productVM = null;

            try
            {
                var user = await _migracionRepository.GetMigracionByArchivo(archivo);

                productVM = new MigracionViewModel(user);
            }
            catch (Exception)
            {

            }
            return productVM;
        }

        public async Task<List<MigracionViewModel>> GetMigraciones()
        {
            var products = await _migracionRepository.GetMigraciones();

            var productsM = products
                .Select(u => new MigracionViewModel(u))
                .ToList();

            return productsM;
        }
    }
}
