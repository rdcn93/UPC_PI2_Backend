using Microsoft.EntityFrameworkCore;
using PremierBeef.Core.Entities;
using PremierBeef.Core.Interfaces;
using PremierBeef.Infrastructure.Data;

namespace PremierBeef.Infrastructure.Repository
{
    public class TipoDocumentoRepository : ITipoDocumentoRepository
    {
        private readonly PremierContext _context;

        public TipoDocumentoRepository(PremierContext context)
        {
            _context = context;
        }

        public async Task<List<TipoDocumento>> GetTipoDocumentos()
        {
            List<TipoDocumento> tipos = new List<TipoDocumento>();

            try
            {
                var result = await Task.Run(() => _context.tipoDocumentos.Where(x => x.Estado).ToListAsync());

                foreach (var us in result)
                {
                    tipos.Add(new TipoDocumento
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
