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
    public class ChallengeProblemDA : ICha_problemDA
    {

        public cha_problems getChaProblemById(int id)
        {
            yuanquanEntities yq = new yuanquanEntities();
            var cha_problems = yq.cha_problems.Single(c => c.id == id);
            return cha_problems;
        }

        public List<cha_problems> getProblemsByChallengeId(int challengeId)
        {
            List<cha_problems> challengeProblems = new List<cha_problems>();
            using (yuanquanEntities yq = new yuanquanEntities())
            {
                var query = from c in yq.cha_problems
                            where c.cha_id == challengeId
                            select c;
                foreach (var item in query)
                    challengeProblems.Add(item);
            }
            return challengeProblems;
        }

        public void saveChaPro(cha_problems chaPro)
        {
            yuanquanEntities yq = new yuanquanEntities();
            yq.cha_problems.AddObject(chaPro);
            yq.SaveChanges();
        }

        public void updateChaPro(cha_problems chaPro)
        {
            yuanquanEntities yq = new yuanquanEntities();
            cha_problems cha = yq.cha_problems.Single(c => c.id == chaPro.id);
            cha.cha_id = chaPro.cha_id;
            cha.p_id = chaPro.p_id;
            yq.SaveChanges();
        }

        public void deleteChaProByChallengeId(int challengeId)
        {
            yuanquanEntities yq = new yuanquanEntities();
            var challenge = yq.cha_problems.Single(c => c.cha_id == challengeId);
            if (challenge == null)
                return;
            yq.cha_problems.DeleteObject(challenge);
            yq.SaveChanges();
        }
    }
}
