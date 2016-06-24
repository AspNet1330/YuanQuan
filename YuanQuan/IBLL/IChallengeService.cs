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
        int saveChallenge(challenge challenge);

        void updateChallenge(challenge challenge);

        void deleteChallenge(int challengeId);

        List<challenge> getChallengesByEnterprise(int enterpeiseId);

        challenge getChallengeByChallengeId(int challengeId);

        List<challenge> getChallengeByState(int state, int enterpriseId);
    }
}
