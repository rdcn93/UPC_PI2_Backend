using PremierBeef.Application.InputModel;
using PremierBeef.Application.Services.Promocion;
using PremierBeef.Application.Services.Reclamo;
using PremierBeef.Application.ViewModels;
using PremierBeef.Core.Entities;
using PremierBeef.Core.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PremierBeef.Test.FakeServices
{
    internal class PromocionServiceFake : IPromocionService
    {
        private readonly List<PromocionViewModel> _promociones;
        public PromocionServiceFake()
        {
            _promociones = new List<PromocionViewModel>() {
                new PromocionViewModel(new Promocion{ id = 1 }){ },
                new PromocionViewModel(new Promocion{ id = 2}){ },
                new PromocionViewModel(new Promocion{ id = 5 }){ }
            };
        }

        public async Task<int> AddPromocion(PromocionModel newP)
        {
            int newId = _promociones.OrderByDescending(x => x.id).First().id + 1;
            PromocionViewModel newUser = new PromocionViewModel(new Promocion
            {
                id = newId
            });

            _promociones.Add(newUser);

            return newUser.id;
        }

        public async Task<bool> UpdatePromocion(PromocionModel newP)
        {
            bool result = false;

            try
            {
                var existing = _promociones.Where(a => a.id == newP.id).FirstOrDefault();
                if (existing != null)
                {
                    result = true;
                }
            }
            catch (Exception)
            {
                result = false;
            }

            return result;
        }

        public async Task<int> RemovePromocion(int id)
        {
            bool result = false;
            var existing = _promociones.First(a => a.id == id);

            if (existing != null)
            {
                _promociones.Remove(existing);
                result = true;
            }

            return result ? 1 : 0;
        }

        public async Task<PromocionViewModel> GetPromocionByPromocion(string usu)
        {
            var existing = _promociones.First(a => a.descripcion == usu);

            return existing;
        }

        public async Task<PromocionViewModel> GetPromocionById(int id)
        {
            var existing = _promociones.Where(a => a.id == id).FirstOrDefault();

            return existing;
        }

        public async Task<List<PromocionViewModel>> GetPromociones()
        {
            return _promociones;
        }
    }
}
