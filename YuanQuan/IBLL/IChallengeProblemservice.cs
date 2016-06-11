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
        public void saveChallengeProblem(cha_problems challengeProblem);

        public void deleteChaProByChallengeId(int challengeId);

        public List<cha_problems> getProblemByChallengeId(int challengeId);

        public cha_problems getProblemById(int chaProblemId);


    }
}
