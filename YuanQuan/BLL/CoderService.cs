using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BLLInterface;
using Model;
using DALInterface;
using DALFactory;

namespace BLL
{
    public class CoderService : ICoderService
    {
        private List<coder> getTopCoder()
        {
            ICoderDA coderDA = DAFactory.createCoderDA();
            List<coder> coders = coderDA.getCoders();
            return coders;
        }

        public List<coder> getTopCoderof(String skill)
        {
           
            ICoderDA coderDA = DAFactory.createCoderDA();
            List<coder> coders = (skill.Equals("All"))?(coderDA.getCoders()) : (coderDA.getCodersof(skill));
            return coders;
        }


        public coder getCoderByID(int id)
        {
            ICoderDA coderDA = DAFactory.createCoderDA();
            return coderDA.getCoderByID(id);
        }
    }
}
