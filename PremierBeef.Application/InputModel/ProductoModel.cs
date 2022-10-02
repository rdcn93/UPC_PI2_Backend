using System.ComponentModel.DataAnnotations;

namespace PremierBeef.Application.InputModel
{
    public class ProductoModel
    {
        [Required]
        public int id { get; set; }
        public string nombre { get; set; }
        public string descripcion { get; set; }
        public decimal precio { get; set; }
        public int idCategoria { get; set; }
        public int idProveedor { get; set; }
    }
}
