using PremierBeef.Core.Entities.Reportes;

namespace PremierBeef.Application.ViewModels.Reportes
{
    public class ReporteReclamosViewModel
    {
        public ReporteReclamosViewModel(ReporteReclamos reporte)
        {
            id = reporte.id;
            detalle = reporte.detalle;
            usuarioRegistro = reporte.usuarioRegistro;
            usuarioRegistroCompleto = reporte.usuarioRegistroCompleto;
            fechaReclamo = reporte.fechaReclamo;
            tipoReclamo = reporte.tipoReclamo;
            pedido = reporte.pedido;
            cliente = reporte.cliente;
            respuesta = reporte.respuesta;
            usuarioRespuesta = reporte.usuarioRespuesta;
            usuarioRespuestaCompleto = reporte.usuarioRespuestaCompleto;
            fechaRespuesta = reporte.fechaRespuesta;
        }
        public int id { get; set; }
        public string detalle { get; set; }
        public string usuarioRegistro { get; set; }
        public string usuarioRegistroCompleto { get; set; }
        public string fechaReclamo { get; set; }
        public string tipoReclamo { get; set; }
        public int pedido { get; set; }
        public string cliente { get; set; }
        public string respuesta { get; set; }
        public string usuarioRespuesta { get; set; }
        public string usuarioRespuestaCompleto { get; set; }
        public string fechaRespuesta { get; set; }
    }
}
