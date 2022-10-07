using PremierBeef.Application.InputModel;
using PremierBeef.Application.ViewModels;
using PremierBeef.Core.Interfaces;

namespace PremierBeef.Application.Services.Cliente
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "ClienteService" en el código y en el archivo de configuración a la vez.
    public class ClienteService : IClienteService
    {
        private readonly IClienteRepository _clienteRepository;

        public ClienteService(IClienteRepository clienteRepository)
        {
            _clienteRepository = clienteRepository;
        }

        public async Task<int> AddCliente(ClienteModel newU)
        {
            Core.Entities.Cliente cliente = new Core.Entities.Cliente
            {
                nombre = newU.nombre,
                apePaterno = newU.apePaterno,
                apeMaterno = newU.apeMaterno,
                telefono = newU.telefono,
                direccion = newU.direccion,
                idTipoDocumento = newU.idTipoDocumento,
                numeroDocumento = newU.numeroDocumento,
                enviarPromociones = newU.enviarPromociones,
                fecRegistro = DateTime.Now,
                fecModificacion = DateTime.Now
            };
            var id = await _clienteRepository.AddCliente(cliente);

            return id;
        }

        public async Task<int> UpdateCliente(ClienteModel newU)
        {
            Core.Entities.Cliente usuario = new Core.Entities.Cliente
            {
                id = newU.id,
                nombre = newU.nombre,
                apePaterno = newU.apePaterno,
                apeMaterno = newU.apeMaterno,
                telefono = newU.telefono,
                direccion = newU.direccion,
                idTipoDocumento = newU.idTipoDocumento,
                numeroDocumento = newU.numeroDocumento,
                enviarPromociones = newU.enviarPromociones,
                fecModificacion = DateTime.Now
            };

            var result = await _clienteRepository.UpdateCliente(usuario);

            return result;
        }

        public async Task<int> RemoveCliente(int id)
        {
            var result = await _clienteRepository.RemoveCliente(id);

            return result;
        }

        public async Task<ClienteViewModel> GetClienteByCliente(ClienteModel usu)
        {
            Core.Entities.Cliente usuario = new Core.Entities.Cliente
            {
                id = usu.id,
                nombre = usu.nombre ?? "",
                apePaterno = usu.apePaterno ?? "",
                apeMaterno = usu.apeMaterno ?? ""
            };

            ClienteViewModel productVM = null;
            try
            {
                var user = await _clienteRepository.GetClienteByCliente(usuario);

                productVM = new ClienteViewModel(user);
            }
            catch (Exception)
            {
            }

            return productVM;
        }

        public async Task<ClienteViewModel> GetClienteByNroDocumento(ClienteModel usu)
        {
            Core.Entities.Cliente cliente = new Core.Entities.Cliente
            {
                id = usu.id,
                nombre = usu.nombre ?? "",
                apePaterno = usu.apePaterno ?? "",
                apeMaterno = usu.apeMaterno ?? "",
                idTipoDocumento = usu.idTipoDocumento,
                numeroDocumento = usu.numeroDocumento
            };

            ClienteViewModel productVM = null;
            try
            {
                var user = await _clienteRepository.GetClienteByNroDocumento(cliente);

                productVM = new ClienteViewModel(user);
            }
            catch (Exception)
            {
            }

            return productVM;
        }

        public async Task<ClienteViewModel> GetClienteById(int id)
        {
            var user = await _clienteRepository.GetClienteById(id);

            ClienteViewModel productVM = new ClienteViewModel(user);

            return productVM;
        }

        public async Task<List<ClienteViewModel>> GetClientes()
        {
            var products = await _clienteRepository.GetClientes();

            var productsM = products
                .Select(u => new ClienteViewModel(u))
                .ToList();

            return productsM;
        }
    }
}
