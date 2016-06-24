using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DALInterface;
using DALFactory;
using BLLInterface;
using Model;

namespace BLL
{
    public class CoderBL:ICoderBL
    {
        ICoderDA coderDA = DAFactory.CreateCoderDA();

        public void delCoder(int id)
        {
            coderDA.delete(id);
        }

        public coder getCoderID(int id)
        {
            return coderDA.getCoderByID(id);
        }

        public coder getCoderObject(string name)
        {
            return coderDA.getCoderByObject(name);
        }
        public coder getCoderAccount(string name)
        {
            return coderDA.getCoderByAccount(name);
        }

    }
}
