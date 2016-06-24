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

<<<<<<< HEAD
        List<challenge> getAllChanllenges();
=======
        List<challenge> getChallengeByState(int state, int enterpriseId);
>>>>>>> 4ae25bc518cac5890903c823d30b31b11ac55dbb
    }
}
