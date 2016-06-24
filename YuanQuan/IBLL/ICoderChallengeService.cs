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
        void saveCoderChallenge(coder_cha coderChallenge);

        coder_cha getCoderChaById(int coderChallengeId);

        List<coder_cha> getCodersByChallengeId(int challengeId);

        coder_cha getCoderChaByCoderCha(int coderId, int challengeId);

    }
}
