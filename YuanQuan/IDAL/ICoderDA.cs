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
        coder getCoderByObject(coder c);
        List<coder> getCoders();
<<<<<<< HEAD
        Boolean insert(coder a);
=======
        List<coder> getCodersof(String skill);
        void insert(coder a);
>>>>>>> master
        void update(coder a);
        void delete(int id);
    }
}
