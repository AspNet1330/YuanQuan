using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class Demo
    {
        public static String getName()
        {
            yuanquanEntities m = new yuanquanEntities();
            return m.admin.FirstOrDefault().a_account;
        }

        public static void add()
        {
            yuanquanEntities m = new yuanquanEntities();
            admin a = new admin();
            a.a_account = "13301156@bjtu.edu.cn";
            a.a_pwd = "123";
            m.admin.AddObject(a);
            m.SaveChanges();
   
        }
    }
}
