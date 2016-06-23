using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DALInterface;
using Model;

namespace DAL
{
    public class CoderDA : ICoderDA
    {
        public coder getCoderByID(int id) {return null;}
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

        public void insert(coder a) { }
        public void update(coder a) { }
        public void delete(int id) { }
    }
}
