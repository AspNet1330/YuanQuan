using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BLLInterface;
using Model;
using ViewModel;
using DALInterface;
using DALFactory;

namespace BLL
{
    public class DisplayService : IDisplayService
    {
        public List<CoderFirstVM> getCoderFirst()
        {
            IChallengeDA challengeDA = DAFactory.createChallengeDA();
            IEnterpriseDA enterpriseDA = DAFactory.createEnterpriseDA();

            List<challenge> challenges = challengeDA.getChanllenges();
            List<enterprise> enterprises = enterpriseDA.getEnterprises();
            List<CoderFirstVM> codefirsts = new List<CoderFirstVM>();

            for (int i = 0; i < challenges.Count; i++)
                for (int j = 0; i < enterprises.Count; j++)
                    if (challenges[i].e_id == enterprises[j].e_id)
                    {
                        CoderFirstVM cf = new CoderFirstVM(enterprises[j].e_name, challenges[i].cha_type);
                        codefirsts.Add(cf);
                        break;
                    }
            return codefirsts;
        }
    }
}
