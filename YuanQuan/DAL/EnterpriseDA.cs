using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DALInterface;
using PublicHelp;
using Model;

namespace DAL
{
    public class EnterpriseDA : IEnterpriseDA
    {
        public List<enterprise> getEnterprises()
        {
            List<enterprise> enterprises = new List<enterprise>();
            using (yuanquanEntities yq = new yuanquanEntities())
            {
                var query = from c in yq.enterprise
                            select c;
                foreach (var item in query)
                    enterprises.Add(item);
            }
            return enterprises;
        }

        public enterprise getEnterpriseByID(int id)
        {
            using (yuanquanEntities yq = new yuanquanEntities())
            {
                enterprise target = new enterprise();
                target = yq.enterprise.FirstOrDefault(e => e.e_id == id);
                return target;
            }
        }

        public enterprise getEnterpriseByObject(string name)
        {
            using (yuanquanEntities yq = new yuanquanEntities())
            {
                enterprise epname = new enterprise();
                epname = yq.enterprise.FirstOrDefault(e => e.e_account == name);
                return epname;
            }
        }

        public void delete(int id)
        {
            using (yuanquanEntities yq = new yuanquanEntities())
            {
                enterprise de = new enterprise();
                de = yq.enterprise.SingleOrDefault(e => e.e_id == id);
                yq.enterprise.DeleteObject(de);
                yq.SaveChanges();
            }
        }


        public Boolean insert(enterprise e)
        {
            yuanquanEntities yq = new yuanquanEntities();
            Boolean exist = CoderDA.exist(e.e_account);
            if (exist)
            {
                yq.enterprise.AddObject(e);
                yq.SaveChanges();
                return true;
            }
            return false;
        }

        public enterprise getEnterpriseByAccount(string account)
        {
            using (yuanquanEntities yq = new yuanquanEntities())
            {
                enterprise enterprisename = new enterprise();
                enterprisename = yq.enterprise.FirstOrDefault(e => e.e_account == account);
                return enterprisename;
            }
        }
    }

}
