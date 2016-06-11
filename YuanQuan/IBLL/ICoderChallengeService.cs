using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace BLLInterface
{
    public interface ICoderChallengeService
    {
        public void saveCoderChallenge(coder_cha coderChallenge);

        public coder_cha getCoderChaById(int coderChallengeId);

        public List<coder_cha> getCodersByChallengeId(int challengeId);

    }
}
