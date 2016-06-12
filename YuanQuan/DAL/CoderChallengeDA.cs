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
        SqlConnection connect = new SqlConnection("metadata=res://*/Model1.csdl|res://*/Model1.ssdl|res://*/Model1.msl;provider=MySql.Data.MySqlClient;provider connection string=&quot;server=120.27.102.55;user id=team;persistsecurityinfo=True;password=123456;database=yuanquan&quot;\" providerName=\"System.Data.EntityClient");
        String sql = "";

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

        public coder_cha getCoderChallengeById(int id)
        {
            yuanquanEntities yq = new yuanquanEntities();
            var coderChallenge = yq.coder_cha.Single(c => c.id== id);
            return coderChallenge;
        }

        public void saveCoderChallenge(coder_cha coderChallenge)
        {
            connect.Open();

            sql = "insert into coder_cha (c_id,cha_id,grade,usetime)values(" + coderChallenge.c_id + "," + coderChallenge.cha_id + "," + coderChallenge.grade + "," + coderChallenge.usetime+")";
            SqlCommand command = new SqlCommand(sql, connect);
            command.ExecuteNonQuery();
            connect.Close();
        }

        public void updateCoderChallenge(coder_cha coderChallenge)
        {
            connect.Open();

            sql = "update coder_cha set c_id=" + coderChallenge.c_id + ",cha_id=" + coderChallenge.cha_id + ",grade=" + coderChallenge.grade + ",usetime = " + coderChallenge.usetime + "where id=" + coderChallenge.id;
            SqlCommand command = new SqlCommand(sql, connect);
            command.ExecuteNonQuery();
            connect.Close();
        }

        public void deleteCoderChallengeById(int coderChallengeId)
        {
            connect.Open();

            sql = "delete from coder_cha where id=" + coderChallengeId;
            SqlCommand command = new SqlCommand(sql, connect);
            command.ExecuteNonQuery();
            connect.Close();
        }
    }
}
