using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using System.Data.Entity;

namespace BLLInterface
{
    public interface IAdminBL
    {
        void addAdmin(admin a);
        void delAdmin(int id);
        admin getAdminID(int id);
        admin getAdminObject(string name);
    }
}
