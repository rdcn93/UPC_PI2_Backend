using Microsoft.EntityFrameworkCore;
using PremierBeef.Core.Entities;
using PremierBeef.Core.Interfaces;
using PremierBeef.Infrastructure.Data;
using PremierBeef.Infrastructure.Models;

namespace PremierBeef.Infrastructure.Repository
{
    public class ClienteRepository : IClienteRepository
    {
        private readonly PremierContext _context;

        public ClienteRepository(PremierContext context)
        {
            _context = context;
        }

        public Task<int> AddCliente(Cliente us)
        {
            int newId = 0;
            tb_cliente tb_cli = new tb_cliente
            {
                Nombre = us.nombre,
                ApePaterno = us.apePaterno,
                ApeMaterno = us.apeMaterno,
                Telefono = us.telefono,
                Direccion = us.direccion,
                Estado = us.estado,
                EnviarPromociones = us.enviarPromociones,
                IdTipoDocumento = us.idTipoDocumento,
                NumeroDocumento = us.numeroDocumento,
                FecRegistro = us.fecRegistro,
                FecModificacion = us.fecModificacion
            };

            try
            {
                _context.clientes.Add(tb_cli);
                _context.SaveChanges();

                newId = tb_cli.Id;
            }
            catch (Exception)
            {
                tb_cli.Id = 0;
            }

            return Task.FromResult(newId);
        }

        public Task<bool> UpdateCliente(Cliente cli)
        {
            bool result = false;

            try
            {
                var cliente = _context.clientes.Find(cli.id);

                if (cliente != null)
                {
                    cliente.Nombre = cli.nombre;
                    cliente.ApePaterno = cli.apePaterno;
                    cliente.ApeMaterno = cli.apeMaterno;
                    cliente.Telefono = cli.telefono;
                    cliente.Direccion = cli.direccion;
                    cliente.Estado = true;
                    cliente.EnviarPromociones = cli.enviarPromociones;
                    cliente.IdTipoDocumento = cli.idTipoDocumento;
                    cliente.NumeroDocumento = cli.numeroDocumento;
                    cliente.FecRegistro = cliente.FecRegistro;
                    cliente.FecModificacion = DateTime.Now;

                    _context.clientes.Attach(cliente);

                    _context.clientes.Update(cliente);

                    var sds = _context.SaveChanges();

                    result = true;
                }
            }
            catch (Exception)
            {

            }

            return Task.FromResult(result);
        }

        public Task<int> RemoveCliente(int id)
        {
            var Cliente = _context.clientes.Find(id);
            if (Cliente == null)
            {
                return Task.FromResult(1);
            }

            _context.clientes.Remove(Cliente);
            _context.SaveChanges();

            return Task.FromResult(0);
        }

        public Task<Cliente> GetClienteById(int id)
        {
            var us = _context.clientes.Find(id);

            if (us != null)
            {
                Cliente tb_cli = new Cliente
                {
                    id = us.Id,
                    nombre = us.Nombre,
                    apePaterno = us.ApePaterno,
                    apeMaterno = us.ApeMaterno,
                    telefono = us.Telefono,
                    direccion = us.Direccion,
                    estado = us.Estado,
                    enviarPromociones = us.EnviarPromociones,
                    idTipoDocumento = us.IdTipoDocumento,
                    numeroDocumento = us.NumeroDocumento,
                    fecRegistro = us.FecRegistro,
                    fecModificacion = us.FecModificacion
                };

                return Task.FromResult(tb_cli);
            }
            else
                return Task.FromResult<Cliente>(null);
        }

        public Task<Cliente> GetClienteByCliente(Cliente cli)
        {
            try
            {
                var us = _context.clientes.Where(x => x.Nombre.Trim().ToLower().Equals(cli.nombre.ToLower()) &&
                                x.ApePaterno.Trim().ToLower().Equals(cli.apePaterno.ToLower()) &&
                                x.ApeMaterno.Trim().ToLower().Equals(cli.apeMaterno.ToLower())
                ).FirstOrDefault();

                if (us != null)
                {
                    Cliente tb_cli = new Cliente
                    {
                        id = us.Id,
                        nombre = us.Nombre,
                        apePaterno = us.ApePaterno,
                        apeMaterno = us.ApeMaterno,
                        telefono = us.Telefono,
                        direccion = us.Direccion,
                        estado = us.Estado,
                        enviarPromociones = us.EnviarPromociones,
                        idTipoDocumento = us.IdTipoDocumento,
                        numeroDocumento = us.NumeroDocumento,
                        fecRegistro = us.FecRegistro,
                        fecModificacion = us.FecModificacion
                    };

                    return Task.FromResult(tb_cli);
                }

            }
            catch (Exception)
            {

                throw;
            }

            return Task.FromResult<Cliente>(null);
        }

        public Task<Cliente> GetClienteByNroDocumento(Cliente cli)
        {
            try
            {
                var us = _context.clientes.Where(x => x.IdTipoDocumento == cli.idTipoDocumento && x.NumeroDocumento.Trim() == cli.numeroDocumento.Trim()
                ).FirstOrDefault();

                if (us != null)
                {
                    Cliente tb_cli = new Cliente
                    {
                        id = us.Id,
                        nombre = us.Nombre,
                        apePaterno = us.ApePaterno,
                        apeMaterno = us.ApeMaterno,
                        telefono = us.Telefono,
                        direccion = us.Direccion,
                        estado = us.Estado,
                        enviarPromociones = us.EnviarPromociones,
                        idTipoDocumento = us.IdTipoDocumento,
                        numeroDocumento = us.NumeroDocumento,
                        fecRegistro = us.FecRegistro,
                        fecModificacion = us.FecModificacion
                    };

                    return Task.FromResult(tb_cli);
                }

            }
            catch (Exception)
            {

                throw;
            }

            return Task.FromResult<Cliente>(null);

        }

        public async Task<List<Cliente>> GetClientes()
        {
            List<Cliente> clientes = new List<Cliente>();

            try
            {
                var result = await Task.Run(() => _context.clientes.ToListAsync());

                foreach (var us in result)
                {
                    clientes.Add(new Cliente
                    {
                        id = us.Id,
                        nombre = us.Nombre,
                        apePaterno = us.ApePaterno,
                        apeMaterno = us.ApeMaterno,
                        telefono = us.Telefono,
                        direccion = us.Direccion,
                        estado = us.Estado,
                        enviarPromociones = us.EnviarPromociones,
                        idTipoDocumento = us.IdTipoDocumento,
                        numeroDocumento = us.NumeroDocumento,
                        fecRegistro = us.FecRegistro,
                        fecModificacion = us.FecModificacion
                    });
                }
            }
            catch (Exception)
            {

            }


            return clientes;
        }
    }
}
