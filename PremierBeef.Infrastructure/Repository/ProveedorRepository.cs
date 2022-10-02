﻿using Microsoft.EntityFrameworkCore;
using PremierBeef.Core.Entities;
using PremierBeef.Core.Interfaces;
using PremierBeef.Infrastructure.Data;
using PremierBeef.Infrastructure.Models;

namespace PremierBeef.Infrastructure.Repository
{
    public class ProveedorRepository : IProveedorRepository
    {
        private readonly PremierContext _context;

        public ProveedorRepository(PremierContext context)
        {
            _context = context;
        }

        public async Task<List<Proveedor>> GetProveedores()
        {
            List<Proveedor> roles = new List<Proveedor>();

            try
            {
                var result = await Task.Run(() => _context.proveedores.ToListAsync());

                foreach (var us in result)
                {
                    roles.Add(new Proveedor
                    {
                        id = us.Id,
                        nombre = us.Nombre ?? "",
                        descripcion = us.Descripcion ?? "",
                        direccion = us.Direccion ?? "",
                        telefono = us.Telefono ?? "",
                        idTipoDocumento = us.IdTipoDocumento,
                        numeroDocumento = us.NumeroDocumento
                    });
                }
            }
            catch (Exception)
            {

            }


            return roles;
        }

        public Task<int> AddProveedor(Proveedor us)
        {
            int newId = 0;
            tb_proveedor tb_cli = new tb_proveedor
            {
                Nombre = us.nombre,
                Descripcion = us.descripcion,
                Direccion = us.direccion,
                Telefono = us.telefono,
                IdTipoDocumento = us.idTipoDocumento,
                NumeroDocumento = us.numeroDocumento,
                FecRegistro = us.fecRegistro,
                FecModificacion = us.fecModificacion
            };

            try
            {
                _context.proveedores.Add(tb_cli);
                _context.SaveChanges();

                newId = tb_cli.Id;
            }
            catch (Exception)
            {
                tb_cli.Id = 0;
            }

            return Task.FromResult(newId);
        }

        public Task<int> UpdateProveedor(Proveedor us)
        {
            tb_proveedor tb_cli = new tb_proveedor
            {
                Id = us.id,
                Nombre = us.nombre,
                Descripcion = us.descripcion,
                Direccion = us.direccion,
                Telefono = us.telefono,
                IdTipoDocumento = us.idTipoDocumento,
                NumeroDocumento = us.numeroDocumento,
                FecRegistro = us.fecRegistro,
                FecModificacion = DateTime.Now
            };

            try
            {
                //var dbEntry = _context.Entry(tb_cli);

                //dbEntry.Property(x => x.Id).IsModified = false;
                //dbEntry.Property(x => x.FecRegistro).IsModified = false;
                _context.proveedores.Attach(tb_cli);
                _context.Entry(tb_cli).State = EntityState.Modified;
                _context.Entry(tb_cli).Property(x => x.Id).IsModified = false;
                _context.Entry(tb_cli).Property(X => X.FecRegistro).IsModified = false;

                _context.proveedores.Update(tb_cli);
                _context.SaveChanges();
            }
            catch (Exception)
            {

            }


            return Task.FromResult(0);
        }

        public Task<int> RemoveProveedor(int id)
        {
            var Proveedor = _context.proveedores.Find(id);
            if (Proveedor == null)
            {
                return Task.FromResult(1);
            }

            _context.proveedores.Remove(Proveedor);
            _context.SaveChanges();

            return Task.FromResult(0);
        }

        public Task<Proveedor> GetProveedorById(int id)
        {
            var us = _context.proveedores.Find(id);

            if (us != null)
            {
                Proveedor tb_cli = new Proveedor
                {
                    id = us.Id,
                    nombre = us.Nombre,
                    descripcion = us.Descripcion,
                    direccion = us.Direccion,
                    telefono = us.Telefono,
                    idTipoDocumento = us.IdTipoDocumento,
                    numeroDocumento = us.NumeroDocumento,
                    fecRegistro = us.FecRegistro,
                    fecModificacion = us.FecModificacion
                };

                return Task.FromResult(tb_cli);
            }
            else
                return Task.FromResult<Proveedor>(null);
        }

        public Task<Proveedor> GetProveedorByProveedor(string Proveedor)
        {
            try
            {
                var us = _context.proveedores.Where(x => x.Nombre.Trim().ToLower().Equals(Proveedor.ToLower())).FirstOrDefault();

                if (us != null)
                {
                    Proveedor tb_cli = new Proveedor
                    {
                        id = us.Id,
                        nombre = us.Nombre,
                        descripcion = us.Descripcion,
                        direccion = us.Direccion,
                        telefono = us.Telefono,
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

            return Task.FromResult<Proveedor>(null);
        }
    }
}
