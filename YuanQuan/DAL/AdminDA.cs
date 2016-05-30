using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DALInterface;
using Model;

namespace DAL
{
    public class AdminDA : IAdminDA
    {
        //yuanquanEntities yq = new yuanquanEntities();
        public admin getAdminByID(int id)
        {
          using (yuanquanEntities yq = new yuanquanEntities())
          {
              admin target = new admin();
              target = yq.admin.First(a => a.a_id == id);
              return target;
          }
        }

        public admin getAdminByObject(admin a) { return null; }
        public List<admin> getAdmins() { return null; }
        public void insert(admin a) { }
        public void update(admin a) { }
        public void delete(int id) { }
        
    }
}
