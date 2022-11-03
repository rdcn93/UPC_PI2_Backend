using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace PremierBeef.Application.Services.Archivo
{
    // NOTA: puede usar el comando "Cambiar nombre" del menú "Refactorizar" para cambiar el nombre de interfaz "IArchivoService" en el código y en el archivo de configuración a la vez.
    public interface IArchivoService
    {
        void DoWork();
    }
}
