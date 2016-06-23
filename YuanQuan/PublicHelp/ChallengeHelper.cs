using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace PublicHelp
{
    public class ChallengeHelper
    {
        public static String getChallengeName(string challengeType,string challengeLevel)
        {
            int type = int.Parse(challengeType);
            int level = int.Parse(challengeLevel);
            level = (level+1)/2;
            string [] a=new string[3]{"初级","中级","高级"};
            string[] b = new string[7] {"Java","Android","ios","C语言(beta)","C++(beta)","php(beta)","Python(beta)"};
            return a[level] + b[type] + "工程师";
        }


    }

   

}
