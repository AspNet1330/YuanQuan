using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BLLInterface;
using BLL;

namespace BLLFactory
{
    public class ServiceFactory
    {
        public static ICoderService createCoderService()
        {
            ICoderService cs = new CoderService();
            return cs;
        }
    }
}
