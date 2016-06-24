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
    public class CoderChallengeService:ICoderChallengeService
    {
        public void saveCoderChallenge(coder_cha coderChallenge)
        {
            ICoder_chaDA ccda = DAFactory.createCoderChallengeDA();
            ccda.saveCoderChallenge(coderChallenge);
        }

        public coder_cha getCoderChaById(int coderChallengeId)
        {
            ICoder_chaDA ccda = DAFactory.createCoderChallengeDA();
            coder_cha coderChallenge = ccda.getCoderChallengeById(coderChallengeId);
            return coderChallenge;
        }

        public List<coder_cha> getCodersByChallengeId(int challengeId)
        {
            ICoder_chaDA ccda = DAFactory.createCoderChallengeDA();
            List<coder_cha> coderChallenges = ccda.getCoderByChallengeId(challengeId);
            return coderChallenges;
        }

        public coder_cha getCoderChaByCoderCha(int coderId, int challengeId)
        {
            ICoder_chaDA ccda = DAFactory.createCoderChallengeDA();
            coder_cha coderChallenge = ccda.getCoderChaByCoderCha(coderId,challengeId);
            return coderChallenge;
        }
    }
}
