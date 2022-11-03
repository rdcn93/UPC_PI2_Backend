using Microsoft.EntityFrameworkCore;
using PremierBeef.Core.Entities;
using PremierBeef.Core.Interfaces;
using PremierBeef.Infrastructure.Data;

namespace PremierBeef.Infrastructure.Repository
{
    public class TipoComprobanteRepository : ITipoComprobanteRepository 
    { 
        private readonly PremierContext _context;

        public TipoComprobanteRepository(PremierContext context)
        {
            _context = context;
        }

        public async Task<List<TipoComprobante>> GetTipoComprobantes()
        {
            List<TipoComprobante> tipos = new List<TipoComprobante>();

            try
            {
                var result = await Task.Run(() => _context.tipoComprobantes.Where(x => x.Estado).ToListAsync());

                foreach (var us in result)
                {
                    tipos.Add(new TipoComprobante
                    {
                        id = us.Id,
                        nombre = us.Nombre,
                        descripcion = us.Descripcion,
                        estado = us.Estado
                    });
                }
            }
            catch (Exception)
            {

            }

            return tipos;
        }
    }
}
