using PremierBeef.Core.Entities.Reportes;

namespace PremierBeef.Core.Interfaces
{
    public interface IReporteRepository
    {
        Task<List<ReporteVentas>> GetReporteVentas(FiltroReporte filtro);
        Task<List<ReportePedidos>> GetReportePedidos(FiltroReporte filtro);
        Task<List<ReporteStock>> GetReporteStock(FiltroReporte filtro);
        Task<List<ReporteReclamos>> GetReporteReclamos(FiltroReporte filtro);
        Task<List<ReporteDelivery>> GetReporteDelivery(FiltroReporte filtro);
    }
}
