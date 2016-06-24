using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ViewModel
{
    public class CoderFirstVM
    {
        public String m_ename;//企业名称
        public String m_cha_title;//挑战名称
        public String m_salary;//薪资信息
        public String m_level;//难度

        public CoderFirstVM(String ename, String type)
        {
            m_ename = ename;
            m_cha_title = type;
        }

    }
}
