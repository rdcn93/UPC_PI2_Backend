using PremierBeef.Application.InputModel;
using PremierBeef.Application.ViewModels.Reportes;
using PremierBeef.Core.Entities.Reportes;
using PremierBeef.Core.Interfaces;

namespace PremierBeef.Application.Services.Reporte
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "ReporteService" en el código y en el archivo de configuración a la vez.
    public class ReporteService : IReporteService
    {
        private readonly IReporteRepository _reporteRepository;

        public ReporteService(IReporteRepository reporteRepository)
        {
            _reporteRepository = reporteRepository;
        }

        public async Task<List<ReporteVentasViewModel>> GetReporteVentas(FiltroReporteModel filtroModel)
        {
            List<ReporteVentasViewModel> result = new List<ReporteVentasViewModel>();
            FiltroReporte filtro = new FiltroReporte
            {
                fecInicio = filtroModel.fecInicio,
                fecFin = filtroModel.fecFin,
                idPedido = filtroModel.idPedido
            };
            try
            {
                var reporte = await _reporteRepository.GetReporteVentas(filtro);

                result = reporte
                .Select(u => new ReporteVentasViewModel(u))
                .ToList();

            }
            catch (Exception)
            {
                result = new List<ReporteVentasViewModel>();
            }

            return result;
        }

        public async Task<List<ReportePedidosViewModel>> GetReportePedidos(FiltroReporteModel filtroModel)
        {
            List<ReportePedidosViewModel> result = new List<ReportePedidosViewModel>();
            FiltroReporte filtro = new FiltroReporte
            {
                fecInicio = filtroModel.fecInicio,
                fecFin = filtroModel.fecFin,
                idPedido = filtroModel.idPedido
            };
            try
            {
                var reporte = await _reporteRepository.GetReportePedidos(filtro);

                result = reporte
                .Select(u => new ReportePedidosViewModel(u))
                .ToList();

            }
            catch (Exception)
            {
                result = new List<ReportePedidosViewModel>();
            }

            return result;
        }

        public async Task<List<ReporteStockViewModel>> GetReporteStock(FiltroReporteModel filtroModel)
        {
            List<ReporteStockViewModel> result = new List<ReporteStockViewModel>();
            FiltroReporte filtro = new FiltroReporte
            {
                fecInicio = filtroModel.fecInicio,
                fecFin = filtroModel.fecFin,
                idPedido = filtroModel.idPedido
            };
            try
            {
                var reporte = await _reporteRepository.GetReporteStock(filtro);

                result = reporte
                .Select(u => new ReporteStockViewModel(u))
                .ToList();

            }
            catch (Exception)
            {
                result = new List<ReporteStockViewModel>();
            }

            return result;
        }

        public async Task<List<ReporteReclamosViewModel>> GetReporteReclamos(FiltroReporteModel filtroModel)
        {
            List<ReporteReclamosViewModel> result = new List<ReporteReclamosViewModel>();
            FiltroReporte filtro = new FiltroReporte
            {
                fecInicio = filtroModel.fecInicio,
                fecFin = filtroModel.fecFin,
                idPedido = filtroModel.idPedido,
                idTipoReclamo = filtroModel.idTipoReclamo
            };
            try
            {
                var reporte = await _reporteRepository.GetReporteReclamos(filtro);

                result = reporte
                .Select(u => new ReporteReclamosViewModel(u))
                .ToList();

            }
            catch (Exception)
            {
                result = new List<ReporteReclamosViewModel>();
            }

            return result;
        }

        public async Task<List<ReporteDeliveryViewModel>> GetReporteDelivery(FiltroReporteModel filtroModel)
        {
            List<ReporteDeliveryViewModel> result = new List<ReporteDeliveryViewModel>();
            FiltroReporte filtro = new FiltroReporte
            {
                fecInicio = filtroModel.fecInicio,
                fecFin = filtroModel.fecFin,
                idPedido = filtroModel.idPedido
            };
            try
            {
                var reporte = await _reporteRepository.GetReporteDelivery(filtro);

                result = reporte
                .Select(u => new ReporteDeliveryViewModel(u))
                .ToList();

            }
            catch (Exception)
            {
                result = new List<ReporteDeliveryViewModel>();
            }

            return result;
        }
    }
}
