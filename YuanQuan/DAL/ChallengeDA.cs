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
    public class ChallengeDA:IChallengeDA
    {
        SqlConnection connect = new SqlConnection("metadata=res://*/Model1.csdl|res://*/Model1.ssdl|res://*/Model1.msl;provider=MySql.Data.MySqlClient;provider connection string=&quot;server=120.27.102.55;user id=team;persistsecurityinfo=True;password=123456;database=yuanquan&quot;\" providerName=\"System.Data.EntityClient");
        String sql = "";
        public List<challenge> getChallengeByEnterpriseId(int enterpriseId)
        {
            List<challenge> challenge = new List<challenge>();
            using (yuanquanEntities yq = new yuanquanEntities())
            {
                var query = from c in yq.challenge
                            where c.e_id == enterpriseId
                            select c;
                foreach (var item in query)
                    challenge.Add(item);
            }
            return challenge;
        }

        public challenge getChallengeById(int challengeId)
        {
            yuanquanEntities yq = new yuanquanEntities();
            var challenge = yq.challenge.Single(c=>c.cha_id == challengeId);
            return challenge;
        }

        public void saveChallenge(challenge challenge)
        {
            connect.Open();

            sql = "insert into challenge (e_id,cha_type,cha_level,cha_public,cha_date)values("+challenge.e_id+",'"+challenge.cha_type+"','"+challenge.cha_level+"',"+challenge.cha_public+","+challenge.cha_date+")";
            SqlCommand command = new SqlCommand(sql, connect);
            command.ExecuteNonQuery();
            connect.Close();
        }

        public void updateChallenge(challenge challenge)
        {
            connect.Open();

            sql = "update challenge set e_id="+challenge.e_id+",cha_type='"+challenge.cha_type +"',cha_level='"+challenge.cha_level+"',cha_public = "+challenge.cha_public+"where cha_id="+challenge.cha_id;
            SqlCommand command = new SqlCommand(sql, connect);
            command.ExecuteNonQuery();
            connect.Close();
        }

        public void deleteChallengeById(int challengeId)
        {
            connect.Open();

            sql = "delete from challenge where cha_id="+challengeId;
            SqlCommand command = new SqlCommand(sql, connect);
            command.ExecuteNonQuery();
            connect.Close();
        }
    }
}
