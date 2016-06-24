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
    public class CoderChallengeDA : ICoder_chaDA
    {
       

        public List<coder_cha> getCoderByChallengeId(int challengeId)
        {
            List<coder_cha> coderChas = new List<coder_cha>();
            using (yuanquanEntities yq = new yuanquanEntities())
            {
                var query = from c in yq.coder_cha
                            where c.cha_id == challengeId
                            select c;
                foreach (var item in query)
                    coderChas.Add(item);
            }
            return coderChas;
        }

        public coder_cha getCoderChaByCoderCha(int coderId, int challengeId)
        {
            yuanquanEntities yq = new yuanquanEntities();
            if (!yq.coder_cha.Any(c => c.c_id == coderId && c.cha_id == challengeId))
            {
                return null;
            }
            var coderChallenge = yq.coder_cha.Single(c => c.c_id== coderId && c.cha_id==challengeId);
            return coderChallenge;
        }

        public coder_cha getCoderChallengeById(int id)
        {
            yuanquanEntities yq = new yuanquanEntities();
            var coderChallenge = yq.coder_cha.Single(c => c.id== id);
            return coderChallenge;
        }

        public void saveCoderChallenge(coder_cha coderChallenge)
        {
           
            yuanquanEntities yq = new yuanquanEntities();
            yq.coder_cha.AddObject(coderChallenge);
            yq.SaveChanges();
      
        }

        public void updateCoderChallenge(coder_cha coderChallenge)
        {
            yuanquanEntities yq = new yuanquanEntities();
            var cha = yq.coder_cha.Single(c => c.id == coderChallenge.id);
            cha.c_id = coderChallenge.c_id;
            cha.cha_id = coderChallenge.cha_id;
            cha.grade = coderChallenge.grade;
            cha.usetime = coderChallenge.usetime;
            yq.SaveChanges();
        }

        public void deleteCoderChallengeById(int coderChallengeId)
        {
            yuanquanEntities yq = new yuanquanEntities();
            var cha = yq.coder_cha.Single(c => c.id == coderChallengeId);
            if (cha == null)
                return;
            yq.coder_cha.DeleteObject(cha);
            yq.SaveChanges();
        }
    }
}
