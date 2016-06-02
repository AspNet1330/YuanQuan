using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace BLLInterface
{
    public interface ICoderService
    {
        List<coder> getTopCoder();
    }
}
