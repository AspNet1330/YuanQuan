using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace DALInterface
{
    public interface ICha_problemDA
    {
        cha_problems getChaProblemById(int id);

        List<cha_problems> getProblemsByChallengeId(int challengeId);

        void saveChaPro(cha_problems chaPro);

        void updateChaPro(cha_problems chaPro);

        void deleteChaProByChallengeId(int ChallengeId);

    }
}
