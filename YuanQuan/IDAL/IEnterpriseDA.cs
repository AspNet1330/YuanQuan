using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace DALInterface
{
    public interface IEnterpriseDA
    {
        List<enterprise> getEnterprises();
        enterprise getEnterpriseByID(int id);
        enterprise getEnterpriseByObject(string name);
        void delete(int id);
        enterprise getEnterpriseByAccount(string account);

        Boolean insert(enterprise e);

    }
}
