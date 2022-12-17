namespace PremierBeef.Application.InputModel
{
    public class FiltroReporteModel
    {
        public DateTime fecInicio { get; set; }
        public DateTime fecFin { get; set; }
        public int idPedido { get; set; }
        public int idTipoReclamo { get; set; }
        public int idProducto { get; set; }
        public string producto { get; set; }
    }
}