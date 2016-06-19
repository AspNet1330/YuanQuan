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
    public class ProblemService : IProblemService
    {
        public List<problem> getProblems()
        {
            IProblemDA problemDA = DAFactory.createProblemDA();
            List<problem> problems = problemDA.getProblems();
            return problems;
        }
    }
}
