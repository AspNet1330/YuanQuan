using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace DALInterface
{
    public interface IProblemDA
    {
       List<problem> getProblems();

       List<problem> getProblemsByType(string Type);

       problem getProblemById(int id);
    }
}
