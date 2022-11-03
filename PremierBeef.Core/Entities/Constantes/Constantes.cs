using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PremierBeef.Core.Entities.Constantes
{
    public class Constantes
    {
        public enum ReclamoEstados
        {
            Registrado = 1,
            Resuelto = 2,
            Anulado = 3
        }

        public enum MigracionEstados
        {
            Ninguno = 0,
            Registrado = 1,
            Iniciado = 2,
            Finalizado = 3,
            Cancelado = 4
        }

        public enum MigracionEstadosColor
        {
            light,
            info,
            dark,
            success,
            danger
        }
        
        public enum TipoArchivos
        {
            Ninguno = 0,
            Ventas = 1,
            Productos = 2
        }
    }
}
