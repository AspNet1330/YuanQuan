using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using DALFactory;
using DALInterface;
using BLLInterface;

namespace BLL
{
    public  class RegisterService : IRegisterService
    {
        public Boolean registerEnterprise(enterprise e) {
            IEnterpriseDA ie = DAFactory.createEnterprise();
            Boolean operate = ie.insert(e);
            return operate;
        }

        public Boolean registerCoder(coder c) {
            ICoderDA ic = DAFactory.createCoder();
            int operate = ic.insert(c);
            if(c.c_id==null)
                return false;
            return true;
        }
    }
}
