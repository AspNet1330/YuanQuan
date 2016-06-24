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
    public class ChallengeService:IChallengeService
    {
        public int saveChallenge(challenge challenge)
        {
            IChallengeDA cda = DAFactory.createChallengeDA();
            return cda.saveChallenge(challenge);
        }

        public void updateChallenge(challenge challenge)
        {
            IChallengeDA cda = DAFactory.createChallengeDA();
            cda.updateChallenge(challenge);
        }

        public void deleteChallenge(int challengeId)
        {
            IChallengeDA cda = DAFactory.createChallengeDA();
            cda.deleteChallengeById(challengeId);
        }

        public List<challenge> getChallengesByEnterprise(int enterpeiseId)
        {
            IChallengeDA cda = DAFactory.createChallengeDA();
            List<challenge> challenges = cda.getChallengeByEnterpriseId(enterpeiseId);
            return challenges;
        }

        public challenge getChallengeByChallengeId(int challengeId)
        {
            IChallengeDA cda = DAFactory.createChallengeDA();
            challenge challenge = cda.getChallengeById(challengeId);
            return challenge;
        }

<<<<<<< HEAD
        public List<challenge> getAllChanllenges()
        {
            IChallengeDA challengeDA = DAFactory.createChallengeDA();
            List<challenge> challenges = challengeDA.getChanllenges();
=======
        public List<challenge> getChallengeByState(int state, int enterpriseId)
        {
            IChallengeDA cda = DAFactory.createChallengeDA();
            List<challenge> challenges = cda.getChallengeByState(state,enterpriseId);
>>>>>>> 4ae25bc518cac5890903c823d30b31b11ac55dbb
            return challenges;
        }
    }
}
