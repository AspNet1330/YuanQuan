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
        public static IRegisterService createRegisterService() {
            IRegisterService rs = new RegisterService();
            return rs;
        }

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

        public static IDisplayService createDisplayService()
        {
            IDisplayService ps = new DisplayService();
            return ps;
        }

        public static IAdminBL CreateAdminBL()
        {
            IAdminBL bl = new AdminBL();
            return bl;
        }

        public static ICoderBL CreateCoderBL()
        {
            ICoderBL bc = new CoderBL();
            return bc;
        }

        public static IEnterpriseBL CreateEnterpriseBL()
        {
            IEnterpriseBL de = new EnterpriseBL();
            return de;
        }
    }
}
