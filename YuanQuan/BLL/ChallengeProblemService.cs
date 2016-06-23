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
    public class ChallengeProblemService:IChallengeProblemService
    {
        public void saveChallengeProblem(cha_problems challengeProblem)
        {
            ICha_problemDA cpda = DAFactory.createChaProDA();
            cpda.saveChaPro(challengeProblem);
        }

        public void deleteChaProByChallengeId(int challengeId)
        {
            ICha_problemDA cpda = DAFactory.createChaProDA();
            cpda.deleteChaProByChallengeId(challengeId);
        }

        public List<cha_problems> getProblemByChallengeId(int challengeId)
        {
            ICha_problemDA cpda = DAFactory.createChaProDA();
            List<cha_problems> chaPros = cpda.getProblemsByChallengeId(challengeId);
            return chaPros;
        }

        public cha_problems getProblemById(int chaProblemId)
        {
            ICha_problemDA cpda = DAFactory.createChaProDA();
            cha_problems chaPro = cpda.getChaProblemById(chaProblemId);
            return chaPro;
        }
    }
}
