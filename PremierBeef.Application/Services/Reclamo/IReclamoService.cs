using PremierBeef.Application.InputModel;
using PremierBeef.Application.ViewModels;

namespace PremierBeef.Application.Services.Reclamo
{

    public interface IReclamoService
    {
        Task<int> AddReclamo(ReclamoModel newU);
        Task<bool> UpdateReclamo(ReclamoModel newU);
        Task<bool> RemoveReclamo(int id);
        Task<ReclamoViewModel> GetReclamoById(int id);
        Task<List<ReclamoViewModel>> GetReclamos();
    }
}
