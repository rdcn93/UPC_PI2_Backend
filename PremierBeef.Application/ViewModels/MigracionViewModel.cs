using PremierBeef.Core.Entities;
using PremierBeef.Core.Entities.Constantes;

namespace PremierBeef.Application.ViewModels
{
    public class MigracionViewModel
    {
        public MigracionViewModel(Migracion migracion)
        {
            id = migracion.id;
            nombreArchivo = migracion.nombreArchivo;
            rutaArchivo = migracion.rutaArchivo;
            fecInicio = migracion.fecInicio;
            fecFin = migracion.fecFin;
            idEstado = migracion.estado;
            totalFilas = migracion.totalFilas;
            totalRegistradas = migracion.totalRegistradas;
            totalObservaciones = migracion.totalObservaciones;
            idTipoArchivo = migracion.tipoArchivo;            
        }

        public int id { get; set; }
        public string nombreArchivo { get; set; }
        public string rutaArchivo { get; set; }
        public DateTime fecInicio { get; set; }
        public DateTime fecFin { get; set; }
        public int idEstado { get; set; }
        public string estado { get { return Enum.GetName(typeof(Constantes.MigracionEstados), idEstado); } }
        public string estadoColor { get { return Enum.GetName(typeof(Constantes.MigracionEstadosColor), idEstado); } }
        public int totalFilas { get; set; }
        public int totalRegistradas { get; set; }
        public int totalObservaciones { get; set; }
        public int idTipoArchivo { get; set; }
        public string tipoArchivo { get { return Enum.GetName(typeof(Constantes.TipoArchivos), idTipoArchivo); } }
        public bool puedeEliminar { get { return idEstado == (int)Constantes.MigracionEstados.Registrado; } }
    }
}
