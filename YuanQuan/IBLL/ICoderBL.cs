using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using System.Data.Entity;

namespace BLLInterface
{
    public interface ICoderBL
    {
        void delCoder(int id);
        coder getCoderID(int id);
        coder getCoderObject(string name);
        coder getCoderAccount(string name);
    }
}
