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
        public static IAdminDA createAdminDA()
        {
            IAdminDA da = new AdminDA();
            return da;
        }

        public static ICoderDA createCoderDA()
        {
            ICoderDA da = new CoderDA();
            return da;
        }
    }
}
