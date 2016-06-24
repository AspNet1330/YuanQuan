using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace DALInterface
{
    public interface IChallengeDA
    {
        List<challenge> getChallengeByEnterpriseId(int enterpriseId);

        challenge getChallengeById(int challengeId);

        int saveChallenge(challenge challenge);

        void updateChallenge(challenge challenge);

        void deleteChallengeById(int challengeId);

<<<<<<< HEAD
        List<challenge> getChanllenges(); 
=======
        List<challenge> getChallengeByState(int state,int enterpriseId);
>>>>>>> 4ae25bc518cac5890903c823d30b31b11ac55dbb
    }
}
