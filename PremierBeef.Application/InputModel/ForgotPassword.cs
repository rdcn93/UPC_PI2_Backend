using System.ComponentModel.DataAnnotations;

namespace PremierBeef.Application.InputModel
{
    public class ForgotPassword
    {
        [Required]
        [EmailAddress]
        public string? Email { get; set; }

        [Required]
        public string? ClientURI { get; set; }
    }
}
