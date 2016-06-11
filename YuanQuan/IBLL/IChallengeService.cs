using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace BLLInterface
{
    public interface IChallengeService
    {
        public void saveChallenge(challenge challenge);

        public void updateChallenge(challenge challenge);

        public void deleteChallenge(int challengeId);

        public List<challenge> getChallengesByEnterprise(int enterpeiseId);

        public challenge getChallengeByChallengeId(int challengeId);
    }
}
