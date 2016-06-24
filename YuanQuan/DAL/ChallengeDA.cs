using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using DALInterface;
using System.Data.SqlClient;
using System.Data;
using System.Data.Common;

namespace DAL
{
    public class ChallengeDA:IChallengeDA
    {
        public List<challenge> getChallengeByEnterpriseId(int enterpriseId)
        {
            List<challenge> challenge = new List<challenge>();
            using (yuanquanEntities yq = new yuanquanEntities())
            {
                var query = from c in yq.challenge
                            where c.e_id == enterpriseId
                            select c;
                foreach (var item in query)
                    challenge.Add(item);
            }
            return challenge;
        }

       public  List<challenge> getChallengeByState(int state,int enterpriseId)
        {
            List<challenge> challenge = new List<challenge>();
            using (yuanquanEntities yq = new yuanquanEntities())
            {
                var query = from c in yq.challenge
                            where c.cha_state == state && c.e_id == enterpriseId
                            select c;
                foreach (var item in query)
                    challenge.Add(item);
            }
            return challenge;
        }

        public challenge getChallengeById(int challengeId)
        {
            yuanquanEntities yq = new yuanquanEntities();
            var challenge = yq.challenge.Single(c=>c.cha_id == challengeId);
            return challenge;
        }

        public int saveChallenge(challenge challenge)
        {
            yuanquanEntities yq = new yuanquanEntities();
            yq.challenge.AddObject(challenge);
            yq.SaveChanges();
            return challenge.cha_id;
        }

        public void updateChallenge(challenge challenge)
        {
            yuanquanEntities yq = new yuanquanEntities();
            challenge cha = yq.challenge.Single(c => c.cha_id == challenge.cha_id);
            cha.cha_type = challenge.cha_type;
            cha.e_id = challenge.e_id;
            cha.cha_level = challenge.cha_level;
            cha.cha_public = challenge.cha_public;
            cha.cha_state = challenge.cha_state;
            yq.SaveChanges();
        }

        public void deleteChallengeById(int challengeId)
        {
            yuanquanEntities yq = new yuanquanEntities();
            var challenge = yq.challenge.Single(c=>c.cha_id==challengeId);
            if(challenge==null)
                return; 
            yq.challenge.DeleteObject(challenge);
            yq.SaveChanges();
        }

<<<<<<< HEAD
        //获取所有挑战
        public List<challenge> getChanllenges()
        {
            List<challenge> challenges = new List<challenge>();
            using (yuanquanEntities yq = new yuanquanEntities())
            {
                var query = from c in yq.challenge
                            select c;
                foreach (var item in query)
                    challenges.Add(item);
            }
            return challenges;
        } 
=======

>>>>>>> 4ae25bc518cac5890903c823d30b31b11ac55dbb
    }
}
