using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace DALInterface
{
    public interface ICoder_chaDA
    {
        List<coder_cha> getCoderByChallengeId(int challengeId);

        coder_cha getCoderChallengeById(int id);

        void saveCoderChallenge(coder_cha coderChallenge);

        void updateCoderChallenge(coder_cha coderChallenge);

        void deleteCoderChallengeById(int coderChallengeId);
    }
}
