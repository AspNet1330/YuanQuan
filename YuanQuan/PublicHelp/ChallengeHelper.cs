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
        public static String getChallengeType(string challengeType)
        {
            int type = int.Parse(challengeType);
            type--;
            string[] b = new string[7] {"Java","Android","ios","C语言(beta)","C++(beta)","php(beta)","Python(beta)"};
            return b[type];
        }

        public static String getChallengeLevel(string challengeLevel)
        {
            int level = int.Parse(challengeLevel);
            level = (level + 1) / 2 - 1;
            string[] a = new string[3] { "初级", "中级", "高级" };
            return a[level];
        }

<<<<<<< HEAD

=======
>>>>>>> master
    }

   

}
