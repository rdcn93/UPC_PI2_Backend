using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PremierBeef.Application.ViewModels
{
    public class ArchivoViewModel
    {
        public int id { get; set; }
        public string nombre { get; set; }
        public string rutaArchivo { get; set; }
        public int estado { get; set; }
    }
}
