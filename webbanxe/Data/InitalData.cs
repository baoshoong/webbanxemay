using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.DependencyInjection;
using System.Drawing;

using webbanxe.Help;
using webbanxe.Models;
namespace webbanxe.Data

{
    public class InitalData

    {
        public static void Seed( IApplicationBuilder applicationBuilder)
        {
           
            using (var serviceScope = applicationBuilder.ApplicationServices.CreateScope() )
            {
                var dataContext = serviceScope.ServiceProvider.GetService<DataContext>();
               
                dataContext.SaveChanges();
            }

            
        }
    }
}
