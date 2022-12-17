using PremierBeef.Core.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PremierBeef.Application.ViewModels
{
    public class PronosticoViewModel
    {        
        public PronosticoViewModel(PronosticoDetalle promo)
        {
            fecha = promo.fecha;
            cantidadPronostico = promo.cantidad;
            cantidadReal = 0;
        }

        public DateTime fecha { get; set; }
        public string fechaStr { get { return fecha.ToString("yyyy-MM-dd"); } }
        public decimal cantidadPronostico { get; set; }
        public decimal cantidadReal { get; set; }
    }
}
