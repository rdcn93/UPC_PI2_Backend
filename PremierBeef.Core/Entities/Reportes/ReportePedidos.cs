namespace PremierBeef.Core.Entities.Reportes
{
    public class ReportePedidos
    {
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
