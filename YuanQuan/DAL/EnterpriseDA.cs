using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DALInterface;
using Model;
using PublicHelp;

namespace DAL
{
    public  class EnterpriseDA : IEnterpriseDA
    {


        public Boolean insert(enterprise e) {
            yuanquanEntities yq = new yuanquanEntities();
            Boolean exist = CoderDA.exist(e.e_account);
            if (exist) {
                yq.enterprise.AddObject(e);
                yq.SaveChanges();
            }
            return false;
        }
    }
}
