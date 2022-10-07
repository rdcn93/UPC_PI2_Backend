using PremierBeef.Core.Entities;

namespace PremierBeef.Application.ViewModels
{
    public class ReclamoViewModel
    {
        public ReclamoViewModel(Reclamo reclamo)
        {
            id = reclamo.id;
            detalle = reclamo.detalle;
            idUsuario = reclamo.idUsuario;
            usuario = reclamo.usuario;
            idPedido = reclamo.idPedido;
            idTipoReclamo = reclamo.idTipoReclamo;
            tipoReclamo = reclamo.tipoReclamo;
            respuesta = reclamo.respuesta;
            idUsuarioRespuesta = reclamo.idUsuarioRespuesta;
            estadoReclamo = reclamo.estadoReclamo;
        }

        public int id { get; set; }
        public string detalle { get; set; }
        public int idUsuario { get; set; }
        public int idUsuarioRespuesta { get; set; }
        public string usuario { get; set; }
        public int idPedido { get; set; }
        public int idTipoReclamo { get; set; }
        public string tipoReclamo { get; set; }
        public string respuesta { get; set; }
        public int estadoReclamo { get; set; }
    }
}
