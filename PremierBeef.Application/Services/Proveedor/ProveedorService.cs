using PremierBeef.Application.InputModel;
using PremierBeef.Application.ViewModels;
using PremierBeef.Core.Interfaces;

namespace PremierBeef.Application.Services.Proveedor
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "ProveedorService" en el código y en el archivo de configuración a la vez.
    public class ProveedorService : IProveedorService
    {
        private readonly IProveedorRepository _proveedorRepository;

        public ProveedorService(IProveedorRepository proveedorRepository)
        {
            _proveedorRepository = proveedorRepository;
        }

        public async Task<int> AddProveedor(ProveedorModel newU)
        {
            Core.Entities.Proveedor cliente = new Core.Entities.Proveedor
            {
                nombre = newU.nombre,
                descripcion = newU.descripcion,
                direccion = newU.direccion,
                telefono = newU.telefono,
                idTipoDocumento = newU.idTipoDocumento,
                numeroDocumento = newU.numeroDocumento,
                fecRegistro = DateTime.Now,
                fecModificacion = DateTime.Now
            };
            var id = await _proveedorRepository.AddProveedor(cliente);

            return id;
        }

        public async Task<bool> UpdateProveedor(ProveedorModel newU)
        {
            Core.Entities.Proveedor usuario = new Core.Entities.Proveedor
            {
                id = newU.id,
                nombre = newU.nombre,
                descripcion = newU.descripcion,
                direccion = newU.direccion,
                telefono = newU.telefono,
                idTipoDocumento = newU.idTipoDocumento,
                numeroDocumento = newU.numeroDocumento,
                fecModificacion = DateTime.Now
            };

            var result = await _proveedorRepository.UpdateProveedor(usuario);

            return result;
        }

        public async Task<int> RemoveProveedor(int id)
        {
            var result = await _proveedorRepository.RemoveProveedor(id);

            return result;
        }

        public async Task<ProveedorViewModel> GetProveedorByProveedor(string usu)
        {
            var user = await _proveedorRepository.GetProveedorByProveedor(usu);

            ProveedorViewModel productVM = new ProveedorViewModel(user);

            return productVM;
        }

        public async Task<ProveedorViewModel> GetProveedorById(int id)
        {
            var user = await _proveedorRepository.GetProveedorById(id);

            ProveedorViewModel productVM = new ProveedorViewModel(user);

            return productVM;
        }

        public async Task<List<ProveedorViewModel>> GetProveedores()
        {
            var roles = await _proveedorRepository.GetProveedores();

            var rolesM = roles
                .Select(u => new ProveedorViewModel(u))
                .ToList();

            return rolesM;
        }
    }
}
