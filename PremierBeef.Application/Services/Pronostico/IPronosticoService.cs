using PremierBeef.Application.InputModel;
using PremierBeef.Application.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace PremierBeef.Application.Services.Pronostico
{
    // NOTA: puede usar el comando "Cambiar nombre" del menú "Refactorizar" para cambiar el nombre de interfaz "IPronosticoService" en el código y en el archivo de configuración a la vez.
    public interface IPronosticoService
    {
        Task<int> AddPronostico(PronosticoModel newU);
        Task<bool> AddPronosticoDetalle(PronosticoDetalleModel newU);
        Task<List<PronosticoViewModel>> GetPronosticosById();
        Task<List<PronosticoViewModel>> GetPronosticos();
    }
}
