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
        public List<coder> getTopCoder()
        {
            ICoderDA coderDA = DAFactory.createCoderDA();
            List<coder> coders = coderDA.getCoders();
            return coders;
        }
    }
}
