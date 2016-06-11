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
        SqlConnection connect = new SqlConnection("metadata=res://*/Model1.csdl|res://*/Model1.ssdl|res://*/Model1.msl;provider=MySql.Data.MySqlClient;provider connection string=&quot;server=120.27.102.55;user id=team;persistsecurityinfo=True;password=123456;database=yuanquan&quot;\" providerName=\"System.Data.EntityClient");
        String sql = "";

        cha_problems getChaProblemById(int id)
        {
            yuanquanEntities yq = new yuanquanEntities();
            var cha_problems = yq.cha_problems.Single(c => c.id == id);
            return cha_problems;
        }

        List<cha_problems> getProblemsByChallengeId(int challengeId)
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

        void saveChaPro(cha_problems chaPro)
        {
            connect.Open();

            sql = "insert into cha_problems (cha_id,p_id)values(" + chaPro.cha_id + "," + chaPro.p_id+")";
            SqlCommand command = new SqlCommand(sql, connect);
            command.ExecuteNonQuery();
            connect.Close();
        }

        void updateChaPro(cha_problems chaPro)
        {
            connect.Open();

            sql = "update cha_problems set cha_id=" + chaPro.cha_id + ",p_id=" + chaPro.p_id + "where id=" + chaPro.id;
            SqlCommand command = new SqlCommand(sql, connect);
            command.ExecuteNonQuery();
            connect.Close();
        }

        void deleteChaProByChallengeId(int challengeId)
        {
            connect.Open();

            sql = "delete from cha_problems where cha_id=" + challengeId;
            SqlCommand command = new SqlCommand(sql, connect);
            command.ExecuteNonQuery();
            connect.Close();
        }
    }
}
