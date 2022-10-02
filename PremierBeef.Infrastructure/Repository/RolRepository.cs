using Microsoft.EntityFrameworkCore;
using PremierBeef.Core.Entities;
using PremierBeef.Core.Interfaces;
using PremierBeef.Infrastructure.Data;

namespace PremierBeef.Infrastructure.Repository
{
    public class RolRepository : IRolRepository
    {
        private readonly PremierContext _context;

        public RolRepository(PremierContext context)
        {
            _context = context;
        }

        public async Task<List<Rol>> GetRoles()
        {
            List<Rol> roles = new List<Rol>();

            try
            {
                var result = await Task.Run(() => _context.roles.Where(x => x.Estado).ToListAsync());

                foreach (var us in result)
                {
                    roles.Add(new Rol
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


            return roles;
        }
    }
}
