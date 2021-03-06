﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using DALInterface;

namespace DALFactory
{
    public class DAFactory
    {

        public static IEnterpriseDA createEnterprise() {
            IEnterpriseDA ie = new EnterpriseDA();
            return ie;
        }

        public static ICoderDA createCoder() {
            ICoderDA ic = new CoderDA();
            return ic;
        }


        public static IAdminDA createAdminDA()
        {
            IAdminDA da = new AdminDA();
            return da;
        }

        public static ICoderDA createCoderDA()
        {
            ICoderDA da = new CoderDA();
            return da;
        }

        public static ICha_problemDA createChaProDA()
        {
            ICha_problemDA chaPro = new ChallengeProblemDA();
            return chaPro;
        }

        public static IChallengeDA createChallengeDA()
        {
            IChallengeDA challenge = new ChallengeDA();
            return challenge;
        }

        public static ICoder_chaDA createCoderChallengeDA()
        {
            ICoder_chaDA coderChallenge = new CoderChallengeDA();
            return coderChallenge;
        }

        public static IProblemDA createProblemDA()
        {
            IProblemDA problemDA = new ProblemDA();
            return problemDA;
        }

        public static IEnterpriseDA createEnterpriseDA()
        {
            IEnterpriseDA da = new EnterpriseDA();
            return da;
        }

        public static IAdminDA CreateAdminDA()
        {
            IAdminDA da = new AdminDA();
            return da;
        }

        public static ICoderDA CreateCoderDA()
        {
            ICoderDA dc = new CoderDA();
            return dc;
        }

        public static IEnterpriseDA CreateEnterpriseDA()
        {
            IEnterpriseDA de = new EnterpriseDA();
            return de;
        }
    }
}
