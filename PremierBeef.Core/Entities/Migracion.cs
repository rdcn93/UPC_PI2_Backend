using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PremierBeef.Core.Entities
{
    public class Migracion
    {
        public int id { get; set; }
        public string nombreArchivo { get; set; }
        public string rutaArchivo { get; set; }
        public DateTime fecInicio { get; set; }
        public DateTime fecFin { get; set; }
        public int estado { get; set; }
        public int totalFilas { get; set; }
        public int totalRegistradas { get; set; }
        public int totalObservaciones { get; set; }
        public int tipoArchivo { get; set; }
        public int idAlmacenPedido { get; set; }
    }
}
