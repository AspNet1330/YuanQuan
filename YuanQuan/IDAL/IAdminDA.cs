using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace DALInterface
{
    public interface IAdminDA
    {
        admin getAdminByID(int id);
        //admin getAdminByObject(admin a);更改了接口
        admin getAdminByObject(string name);
        List<admin> getAdmins();
        void insert(admin a);
        void update(admin a);
        void delete(int id);

    }
}
