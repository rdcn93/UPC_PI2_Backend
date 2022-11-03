using PremierBeef.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PremierBeef.Core.Interfaces
{
    public interface IMigracionRepository
    {
        Task<int> AddMigracion(Migracion us);
        Task<bool> UpdateMigracion(Migracion us);
        Task<Migracion> GetMigracionByArchivo(string archivo);
        Task<bool> RemoveMigracion(int id);
        Task<List<Migracion>> GetMigraciones();
    }
}
