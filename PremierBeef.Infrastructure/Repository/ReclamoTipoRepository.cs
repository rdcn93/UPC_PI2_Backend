using Microsoft.EntityFrameworkCore;
using PremierBeef.Core.Entities;
using PremierBeef.Core.Interfaces;
using PremierBeef.Infrastructure.Data;

namespace PremierBeef.Infrastructure.Repository
{
    public class ReclamoTipoRepository : IReclamoTipoRepository
    {
        private readonly PremierContext _context;

        public ReclamoTipoRepository(PremierContext context)
        {
            _context = context;
        }

        public async Task<List<ReclamoTipo>> GetReclamoTipos()
        {
            List<ReclamoTipo> reclamoTipos = new List<ReclamoTipo>();

            try
            {
                var result = await Task.Run(() => _context.reclamoTipos.Where(x => x.Estado).ToListAsync());

                foreach (var us in result)
                {
                    reclamoTipos.Add(new ReclamoTipo
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


            return reclamoTipos;
        }
    }
}
