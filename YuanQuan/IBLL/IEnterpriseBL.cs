using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace BLLInterface
{
    public interface IEnterpriseBL
    {
        void delEnterprise(int id);
        enterprise getEnterpriseID(int id);
        enterprise getEnterpriseObject(string name);
        enterprise getEnterpriseAccount(string name);
    }
}
