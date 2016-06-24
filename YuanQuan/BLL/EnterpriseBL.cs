using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DALInterface;
using DALFactory;
using Model;
using BLLInterface;

namespace BLL
{
    public class EnterpriseBL:IEnterpriseBL
    {
        IEnterpriseDA entepriseDA = DAFactory.CreateEnterpriseDA();

        public void delEnterprise(int id)
        {
            entepriseDA.delete(id);
        }

        public enterprise getEnterpriseID(int id)
        {
            return entepriseDA.getEnterpriseByID(id);
        }

        public enterprise getEnterpriseObject(string name)
        {
            return entepriseDA.getEnterpriseByObject(name);
        }

        public enterprise getEnterpriseAccount(string name)
        {
            return entepriseDA.getEnterpriseByAccount(name);
        }
    }
}
