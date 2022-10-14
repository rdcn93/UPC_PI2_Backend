using Microsoft.EntityFrameworkCore;
using PremierBeef.Core.Entities;
using PremierBeef.Core.Interfaces;
using PremierBeef.Infrastructure.Data;
using PremierBeef.Infrastructure.Models;

namespace PremierBeef.Infrastructure.Repository
{
    public class ProductoRepository : IProductoRepository
    {
        private readonly PremierContext _context;

        public ProductoRepository(PremierContext context)
        {
            _context = context;
        }

        public Task<int> AddProducto(Producto us)
        {
            int newId = 0;
            tb_producto tb_user = new tb_producto
            {
                Nombre = us.nombre,
                Descripcion = us.descripcion,
                Precio = us.precio,
                IdCategoria = us.idCategoria,
                IdProveedor = us.idProveedor,
                FecRegistro = us.fecRegistro,
                FecModificacion = us.fecModificacion
            };

            try
            {
                _context.productos.Add(tb_user);
                _context.SaveChanges();

                newId = tb_user.Id;
            }
            catch (Exception)
            {
                tb_user.Id = 0;
            }

            return Task.FromResult(newId);
        }

        public Task<bool> UpdateProducto(Producto prod)
        {
            bool result = false;

            try
            {
                var producto = _context.productos.Find(prod.id);

                if (producto != null)
                {
                    producto.Nombre = prod.nombre;
                    producto.Descripcion = prod.descripcion;
                    producto.Precio = prod.precio;
                    producto.IdCategoria = prod.idCategoria;
                    producto.IdProveedor = prod.idProveedor;
                    producto.FecRegistro = producto.FecRegistro;
                    producto.FecModificacion = DateTime.Now;

                    _context.productos.Attach(producto);

                    _context.productos.Update(producto);

                    var sds = _context.SaveChanges();

                    result = true;
                }
            }
            catch (Exception)
            {

            }

            return Task.FromResult(result);
        }

        public Task<int> RemoveProducto(int id)
        {
            var Producto = _context.productos.Find(id);
            if (Producto == null)
            {
                return Task.FromResult(1);
            }

            _context.productos.Remove(Producto);
            _context.SaveChanges();

            return Task.FromResult(0);
        }

        public Task<Producto> GetProductoById(int id)
        {
            var us = _context.productos.Find(id);

            if (us != null)
            {
                Producto tb_user = new Producto
                {
                    id = us.Id,
                    nombre = us.Nombre,
                    descripcion = us.Descripcion,
                    precio = us.Precio,
                    idCategoria = us.IdCategoria,
                    idProveedor = us.IdProveedor,
                    fecRegistro = us.FecRegistro,
                    fecModificacion = us.FecModificacion
                };

                return Task.FromResult(tb_user);
            }
            else
                return Task.FromResult<Producto>(null);
        }

        public Task<Producto> GetProductoByProducto(string Producto)
        {
            try
            {
                var us = _context.productos.Where(x => x.Nombre.Trim().ToLower().Equals(Producto.ToLower())).FirstOrDefault();

                if (us != null)
                {
                    Producto tb_user = new Producto
                    {
                        id = us.Id,
                        nombre = us.Nombre,
                        descripcion = us.Descripcion,
                        precio = us.Precio,
                        idCategoria = us.IdCategoria,
                        idProveedor = us.IdProveedor,
                        fecRegistro = us.FecRegistro,
                        fecModificacion = us.FecModificacion
                    };

                    return Task.FromResult(tb_user);
                }

            }
            catch (Exception)
            {

                throw;
            }

            return Task.FromResult<Producto>(null);

        }

        public async Task<List<Producto>> GetProductos()
        {
            List<Producto> productos = new List<Producto>();

            try
            {
                var result = await Task.Run(() => _context.productos.ToListAsync());

                foreach (var us in result)
                {
                    productos.Add(new Producto
                    {
                        id = us.Id,
                        nombre = us.Nombre,
                        descripcion = us.Descripcion,
                        precio = us.Precio,
                        idCategoria = us.IdCategoria,
                        idProveedor = us.IdProveedor,
                        fecRegistro = us.FecRegistro,
                        fecModificacion = us.FecModificacion
                    });
                }
            }
            catch (Exception)
            {

            }


            return productos;
        }
    }
}
