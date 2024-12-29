
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Tokens;
using Microsoft.SqlServer.Server;
using webbanxe.Constant;
using webbanxe.Data;
using webbanxe.Models;
using webbanxe.Models.Authentications;
using webbanxe.Models.ModelView;

namespace webbanxe.Controllers
{
    public class PaymentController : Controller

    {
        private readonly IConfiguration _configuration;
        private readonly DataContext _context;

        public PaymentController(IConfiguration configuration, DataContext context)
        {
            _context = context;
            _configuration = configuration;
        }

        [Route("/payment.html", Name = "payment")]
        [Authentication]
       

        [Authentication]
        [Route("/lich-su-thanh-toan")]
        public async Task<ActionResult> LichSuThanhToan()
        {
            long idUser = long.Parse(HttpContext.Session.GetString("idUser"));
            var payment = from i in _context.Payments where i.IdUser ==idUser select i;
            List<Payment> paymentList = new List<Payment>();
            foreach( var item in payment)
            {
                paymentList.Add(item);
            }
            return View(paymentList);
        }
    }
}
