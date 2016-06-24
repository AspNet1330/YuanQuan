using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DALInterface;
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
    }
}
