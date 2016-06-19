using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BLLInterface;
using BLL;

namespace BLLFactory
{
    public class ServiceFactory
    {
        public static ICoderService createCoderService()
        {
            ICoderService cs = new CoderService();
            return cs;
        }

        public static IChallengeService createChallengeService()
        {
            IChallengeService cs = new ChallengeService();
            return cs;
        }

        public static ICoderChallengeService createCoderChallengeService()
        {
            ICoderChallengeService ccs = new CoderChallengeService();
            return ccs;
        }

        public static IChallengeProblemService createChallengeProblemService()
        {
            IChallengeProblemService cps = new ChallengeProblemService();
            return cps;
        }

        public static IProblemService createProblemService()
        {
            IProblemService ps = new ProblemService();
            return ps;
        }
    }
}
