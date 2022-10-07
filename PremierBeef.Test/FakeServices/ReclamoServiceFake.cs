using PremierBeef.Application.InputModel;
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
    internal class ReclamoServiceFake : IReclamoService
    {
        private readonly List<ReclamoViewModel> _reclamos;
        public ReclamoServiceFake()
        {
            _reclamos = new List<ReclamoViewModel>() {
                new ReclamoViewModel(new Reclamo{ id = 1 }){ },
                new ReclamoViewModel(new Reclamo{ id = 2}){ },
                new ReclamoViewModel(new Reclamo{ id = 5 }){ }
            };
        }
        public async Task<int> AddReclamo(ReclamoModel newU)
        {
            int newId = _reclamos.OrderByDescending(x => x.id).First().id + 1;
            ReclamoViewModel newUser = new ReclamoViewModel(new Reclamo
            {
                id = newId
            });

            _reclamos.Add(newUser);

            return newU.id;
        }

        public async Task<int> UpdateReclamo(ReclamoModel newU)
        {
            int result = 0;

            try
            {
                var existing = _reclamos.Where(a => a.id == newU.id).FirstOrDefault();
                if (existing != null)
                {
                    result = 1;
                }
            }
            catch (Exception)
            {
                result = 0;
            }

            return result;
        }

        public async Task<int> RemoveReclamo(int id)
        {
            int result = 0;
            var existing = _reclamos.First(a => a.id == id);

            if (existing != null)
            {
                _reclamos.Remove(existing);
            }

            return result;
        }

        public async Task<ReclamoViewModel> GetUserByReclamo(string usu)
        {
            var existing = _reclamos.First(a => a.usuario == usu);

            return existing;
        }

        public async Task<ReclamoViewModel> GetReclamoById(int id)
        {
            var existing = _reclamos.Where(a => a.id == id).FirstOrDefault();

            return existing;
        }

        public async Task<List<ReclamoViewModel>> GetReclamos()
        {
            return _reclamos;
        }
    }
}
