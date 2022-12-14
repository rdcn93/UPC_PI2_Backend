using PremierBeef.Application.InputModel;
using PremierBeef.Application.ViewModels;
using PremierBeef.Core.Entities.Constantes;
using PremierBeef.Core.Interfaces;

namespace PremierBeef.Application.Services.Reclamo
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "ReclamoService" en el código y en el archivo de configuración a la vez.
    public class ReclamoService : IReclamoService
    {
        private readonly IReclamoRepository _reclamoRepository;

        public ReclamoService(IReclamoRepository reclamoRepository)
        {
            _reclamoRepository = reclamoRepository;
        }

        public async Task<int> AddReclamo(ReclamoModel newU)
        {
            Core.Entities.Reclamo cliente = new Core.Entities.Reclamo
            {
                detalle = newU.detalle,
                idPedido = newU.idPedido,
                idTipoReclamo = newU.idTipoReclamo,
                idUsuario = newU.idUsuario,
                respuesta = newU.respuesta,
                fecRegistro = DateTime.Now,
                fecModificacion = DateTime.Now,
                estadoReclamo = (int)Constantes.ReclamoEstados.Registrado,
                fecReclamo = DateTime.Now,
                estado = true
            };
            var id = await _reclamoRepository.AddReclamo(cliente);

            return id;
        }

        public async Task<bool> UpdateReclamo(ReclamoModel newU)
        {
            Core.Entities.Reclamo usuario = new Core.Entities.Reclamo
            {
                id = newU.id,
                detalle = newU.detalle,
                idPedido = newU.idPedido,
                idTipoReclamo = newU.idTipoReclamo,
                idUsuario = newU.idUsuario,
                respuesta = newU.respuesta,
                fecModificacion = DateTime.Now,
                estadoReclamo = string.IsNullOrEmpty(newU.respuesta) ? (int)Constantes.ReclamoEstados.Registrado : (int)Constantes.ReclamoEstados.Resuelto,
                estado = true,
                fecRespuesta = string.IsNullOrEmpty(newU.respuesta) ? DateTime.Now : DateTime.Now,
                idUsuarioRespuesta = newU.idUsuarioRespuesta
            };

            var result = await _reclamoRepository.UpdateReclamo(usuario);

            return result;
        }

        public async Task<bool> RemoveReclamo(int id)
        {
            var result = await _reclamoRepository.RemoveReclamo(id);

            return result;
        }

        public async Task<ReclamoViewModel> GetReclamoById(int id)
        {
            var user = await _reclamoRepository.GetReclamoById(id);

            ReclamoViewModel productVM = new ReclamoViewModel(user);

            return productVM;
        }

        public async Task<List<ReclamoViewModel>> GetReclamos()
        {
            var roles = await _reclamoRepository.GetReclamos();

            var rolesM = roles
                .Select(u => new ReclamoViewModel(u))
                .ToList();

            return rolesM;
        }
    }
}
