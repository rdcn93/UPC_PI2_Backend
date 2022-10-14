using PremierBeef.Application.InputModel;
using PremierBeef.Application.ViewModels;
using PremierBeef.Core.Interfaces;

namespace PremierBeef.Application.Services.Almacen
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "AlmacenService" en el código y en el archivo de configuración a la vez.
    public class AlmacenService : IAlmacenService
    {
        private readonly IAlmacenRepository _almacenRepository;

        public AlmacenService(IAlmacenRepository almacenRepository)
        {
            _almacenRepository = almacenRepository;
        }

        public async Task<int> AddAlmacen(AlmacenModel newU)
        {
            Core.Entities.Almacen cliente = new Core.Entities.Almacen
            {
                nombre = newU.nombre,
                descripcion = newU.descripcion,
                direccion = newU.direccion,
                telefono = newU.telefono,
                fecRegistro = DateTime.Now,
                fecModificacion = DateTime.Now
            };
            var id = await _almacenRepository.AddAlmacen(cliente);

            return id;
        }

        public async Task<bool> UpdateAlmacen(AlmacenModel newU)
        {
            Core.Entities.Almacen usuario = new Core.Entities.Almacen
            {
                id = newU.id,
                nombre = newU.nombre,
                descripcion = newU.descripcion,
                direccion = newU.direccion,
                telefono = newU.telefono,
                fecModificacion = DateTime.Now
            };

            var result = await _almacenRepository.UpdateAlmacen(usuario);

            return result;
        }

        public async Task<int> RemoveAlmacen(int id)
        {
            var result = await _almacenRepository.RemoveAlmacen(id);

            return result;
        }

        public async Task<AlmacenViewModel> GetAlmacenByAlmacen(string usu)
        {
            AlmacenViewModel productVM = null;
            try
            {
                var user = await _almacenRepository.GetAlmacenByAlmacen(usu);

                productVM = new AlmacenViewModel(user);
            }
            catch (Exception)
            {
            }

            return productVM;
        }

        public async Task<AlmacenViewModel> GetAlmacenById(int id)
        {
            AlmacenViewModel productVM = null;
            try
            {
                var user = await _almacenRepository.GetAlmacenById(id);

                productVM = new AlmacenViewModel(user);
            }
            catch (Exception)
            {
            }

            return productVM;
        }

        public async Task<List<AlmacenViewModel>> GetAlmacens()
        {
            var products = await _almacenRepository.GetAlmacens();

            var productsM = products
                .Select(u => new AlmacenViewModel(u))
                .ToList();

            return productsM;
        }
    }
}
