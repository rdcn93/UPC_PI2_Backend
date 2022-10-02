using PremierBeef.Application.Services.Security;

namespace PremierBeef.Test
{
    public class SecurityServiceFake : ISecurityService
    {
        public SecurityServiceFake()
        {
        }
        public bool Check(string hash, string password)
        {
            return true;
        }

        public string Hash(string password)
        {
            return "";
        }
    }
}
