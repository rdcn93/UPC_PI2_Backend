using PremierBeef.Core.Entities;

namespace PremierBeef.Application.ViewModels
{
    public class ClienteViewModel
    {
        public ClienteViewModel(Cliente cli)
        {
            id = cli.id;
            nombre = cli.nombre;
            apePaterno = cli.apePaterno;
            apeMaterno = cli.apeMaterno;
            telefono = cli.telefono;
            direccion = cli.direccion;
            idTipoDocumento = cli.idTipoDocumento;
            numeroDocumento = cli.numeroDocumento;
            fecRegistro = cli.fecRegistro;
            enviarPromociones = cli.enviarPromociones;
        }

        public int id { get; set; }
        public string nombre { get; set; }
        public string apePaterno { get; set; }
        public string apeMaterno { get; set; }
        public string telefono { get; set; }
        public string direccion { get; set; }
        public bool estado { get; set; }
        public DateTime fecRegistro { get; set; }
        public DateTime fecModificacion { get; set; }
        public int idTipoDocumento { get; set; }
        public string numeroDocumento { get; set; }
        public bool enviarPromociones { get; set; }
    }
}
