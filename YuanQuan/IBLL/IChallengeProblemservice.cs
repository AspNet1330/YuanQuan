using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace BLLInterface
{
    public interface IChallengeProblemService
    {
        void saveChallengeProblem(cha_problems challengeProblem);

        void deleteChaProByChallengeId(int challengeId);

        List<cha_problems> getProblemByChallengeId(int challengeId);

        cha_problems getProblemById(int chaProblemId);


    }
}
