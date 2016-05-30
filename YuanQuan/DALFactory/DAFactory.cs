using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using DALInterface;

namespace DALFactory
{
    public class DAFactory
    {
        public static IAdminDA CreateAdminDA()
        {
            IAdminDA da = new AdminDA();
            return da;
        }
    }
}
