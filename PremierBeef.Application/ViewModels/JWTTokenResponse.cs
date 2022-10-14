namespace PremierBeef.Application.ViewModels
{
    public class JWTTokenResponse
    {
        public string? Token { get; set; }
        public int userId { get; set; }
        public string user { get; set; }
        public string userFullName { get; set; }
    }
}
