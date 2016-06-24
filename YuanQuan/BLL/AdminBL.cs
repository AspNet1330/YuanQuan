using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BLLInterface;
using DALInterface;
using DALFactory;
using Model;

namespace BLL
{
    public class AdminBL : IAdminBL
    {
        IAdminDA adminDA = DAFactory.CreateAdminDA();

        public void addAdmin(admin a)
        {
            adminDA.insert(a);
        }

        public void delAdmin(int id)
        {
            adminDA.delete(id);
        }

        public admin getAdminID(int id) 
        {
            return adminDA.getAdminByID(id);
        }

        public admin getAdminObject(string name)
        {
            return adminDA.getAdminByObject(name);
        }
        
    }
}
