namespace PremierBeef.Application.InputModel
{
    public class ReclamoModel
    {
        public int id { get; set; }
        public string detalle { get; set; }
        public int idUsuario { get; set; }
        public int idPedido { get; set; }
        public int idTipoReclamo { get; set; }
        public string respuesta { get; set; }
        public int idUsuarioRespuesta { get; set; }
    }
}
