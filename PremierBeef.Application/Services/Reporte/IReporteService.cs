using PremierBeef.Application.InputModel;
using PremierBeef.Application.ViewModels.Reportes;

namespace PremierBeef.Application.Services.Reporte
{
    // NOTA: puede usar el comando "Cambiar nombre" del menú "Refactorizar" para cambiar el nombre de interfaz "IReporteService" en el código y en el archivo de configuración a la vez.
    public interface IReporteService
    {
        Task<List<ReporteVentasViewModel>> GetReporteVentas(FiltroReporteModel filtroModel);
        Task<List<ReportePedidosViewModel>> GetReportePedidos(FiltroReporteModel filtroModel);
        Task<List<ReporteStockViewModel>> GetReporteStock(FiltroReporteModel filtroModel);
        Task<List<ReporteReclamosViewModel>> GetReporteReclamos(FiltroReporteModel filtroModel);
        Task<List<ReporteDeliveryViewModel>> GetReporteDelivery(FiltroReporteModel filtroModel);
    }
}
