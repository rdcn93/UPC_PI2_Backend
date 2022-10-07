using MimeKit;
using PremierBeef.Application.Services.Usuario;
using PremierBeef.Mail;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PremierBeef.Test.FakeServices
{
    internal class EmailServiceFake : IEmailSender
    {
        public void SendEmail(Message message)
        {
            var emailMessage = CreateEmailMessage(message);

            Send(emailMessage);
        }

        public async Task SendEmailAsync(Message message)
        {
            var mailMessage = CreateEmailMessage(message);

            await SendAsync(mailMessage);
        }

        private MimeMessage CreateEmailMessage(Message message)
        {
            var emailMessage = new MimeMessage();

            return emailMessage;
        }

        private void Send(MimeMessage mailMessage)
        {
           
        }

        private async Task SendAsync(MimeMessage mailMessage)
        {
            
        }
    }
}
