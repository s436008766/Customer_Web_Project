using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Customer_Web_Project.Startup))]
namespace Customer_Web_Project
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
