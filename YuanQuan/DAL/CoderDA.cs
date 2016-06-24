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
    public class CoderDA : ICoderDA
    {
        public coder getCoderByID(int id){
            coder acoder = new coder();
            yuanquanEntities yq = new yuanquanEntities();
            if (!yq.coder.Any(c => c.c_id == id))
            {
                return null;
            }
            acoder = yq.coder.Single(c => c.c_id == id);
          
            return acoder;
        }

        public coder getCoderByAccount(String account)
        {
            coder acoder = new coder();
            yuanquanEntities yq = new yuanquanEntities();
            if (!yq.coder.Any(c => c.c_account == account))
            {
                return null;
            }
            acoder = yq.coder.Single(c => c.c_account == account);
            
            return acoder;
        }


        public coder getCoderByObject(coder c) { return null; }
        //获取所有程序员对象，按身价降序排列
        public List<coder> getCoders()
        {
            List<coder> coders = new List<coder>();
            using(yuanquanEntities yq = new yuanquanEntities())
            {
                var query = from c in yq.coder
                            orderby c.c_value descending
                            select c;
                foreach(var item in query)
                    coders.Add(item);
            }
            return coders;
        }

        public int insert(coder a) {
            yuanquanEntities yq = new yuanquanEntities();
            //Boolean exist = CoderDA.exist(a.c_account);
            //if (exist) { 
                yq.coder.AddObject(a);
                yq.SaveChanges();
            //}
            return a.c_id;
        
        }
        public static Boolean exist(String account)
        {
            yuanquanEntities yq = new yuanquanEntities();
            coder ac = yq.coder.SingleOrDefault(c => c.c_account == account);
            enterprise ae = yq.enterprise.SingleOrDefault(e => e.e_account == account);
            if (ac == null && ae == null)
                return true;
            return false;
        }
 

        //获取所有某技术方向程序员对象，按身价降序排列
        public List<coder> getCodersof(String skill)
        {
            List<coder> coders = new List<coder>();
            using (yuanquanEntities yq = new yuanquanEntities())
            {
                var query = from c in yq.coder
                            where c.c_skill == skill 
                            orderby c.c_value descending
                            select c;
                foreach (var item in query)
                    coders.Add(item);
            }
            return coders;
        }

        public void update(coder a) { }
        public void delete(int id) { }

        public coder getCoderByObject(string name)
        {
            using (yuanquanEntities yq = new yuanquanEntities())
            {
                coder codername = new coder();
                codername = yq.coder.FirstOrDefault(c => c.c_account == name);
                return codername;
            }
        }

        public coder getCoderByAccount(string account)
        {
            using (yuanquanEntities yq = new yuanquanEntities())
            {
                coder codername = new coder();
                codername = yq.coder.FirstOrDefault(c => c.c_account == account);
                return codername;
            }
        }
    }
}
