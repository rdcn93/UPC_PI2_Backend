using PremierBeef.Application.InputModel;
using PremierBeef.Application.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace PremierBeef.Application.Services.Migracion
{
    // NOTA: puede usar el comando "Cambiar nombre" del menú "Refactorizar" para cambiar el nombre de interfaz "IMigracionService" en el código y en el archivo de configuración a la vez.
    public interface IMigracionService
    {
        Task<int> AddMigracion(MigracionModel us);
        Task<bool> UpdateMigracion(MigracionModel us);
        Task<bool> RemoveMigracion(int id);
        Task<MigracionViewModel> GetMigracionByArchivo(string archivo);
        Task<List<MigracionViewModel>> GetMigraciones();
    }
}
