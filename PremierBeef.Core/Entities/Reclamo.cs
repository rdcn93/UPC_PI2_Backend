namespace PremierBeef.Core.Entities
{
    public class Reclamo
    {
        public int id { get; set; }
        public string detalle { get; set; }
        public int idUsuario { get; set; }
        public string usuario { get; set; }
        public int idPedido { get; set; }
        public int idTipoReclamo { get; set; }
        public int idUsuarioRespuesta { get; set; }
        public string tipoReclamo { get; set; }
        public string respuesta { get; set; }
        public DateTime fecRegistro { get; set; }
        public DateTime fecModificacion { get; set; }
        public DateTime fecReclamo { get; set; }
        public DateTime fecRespuesta { get; set; }
        public int estadoReclamo { get; set; }
        public int estado { get; set; }

    }
}
