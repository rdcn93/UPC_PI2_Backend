namespace PremierBeef.Core.Entities.Reportes
{
    public class FiltroReporte
    {
        public DateTime fecInicio { get; set; }
        public DateTime fecFin { get; set; }
        public int idPedido { get; set; }
        public int idTipoReclamo { get; set; }
    }
}
