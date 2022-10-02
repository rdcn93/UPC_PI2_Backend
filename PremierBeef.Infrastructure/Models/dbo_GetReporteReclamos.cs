namespace PremierBeef.Infrastructure.Models
{
    public class dbo_GetReporteReclamos
    {
        public int Id { get; set; }
        public string Detalle { get; set; }
        public string UsuarioRegistro { get; set; }
        public string UsuarioRegistroCompleto { get; set; }
        public string FechaReclamo { get; set; }
        public string TipoReclamo { get; set; }
        public int Pedido { get; set; }
        public string Cliente { get; set; }
        public string Respuesta { get; set; }
        public string UsuarioRespuesta { get; set; }
        public string UsuarioRespuestaCompleto { get; set; }
        public string FechaRespuesta { get; set; }
    }
}
