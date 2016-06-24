using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using ViewModel;

namespace BLLInterface
{
    public interface IDisplayService
    {
        List<CoderFirstVM> getCoderFirst();
    }
}
