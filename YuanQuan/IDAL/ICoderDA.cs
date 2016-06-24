using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace DALInterface
{
    public interface ICoderDA
    {
        coder getCoderByID(int id);
<<<<<<< HEAD
        //coder getCoderByObject(coder c);
        coder getCoderByObject(string name);
=======

        coder getCoderByAccount(String account);
        coder getCoderByObject(coder c);
>>>>>>> 4ae25bc518cac5890903c823d30b31b11ac55dbb
        List<coder> getCoders();
        int insert(coder a);
        List<coder> getCodersof(String skill);
        void update(coder a);
        void delete(int id);
        coder getCoderByAccount(string account);
    }
}
