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

        List<challenge> getChanllenges(); 
    }
}
