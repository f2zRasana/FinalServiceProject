using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SKU.Entities.Main;

namespace SKU.DAO.Main
{
    public class NewMessageDao
    {
        public List<NewMessage> SelectAllWithPaging(int pageIndex, int pageSize, out int total)
        {
            List<NewMessage> allNewMessages = new List<NewMessage>();
            // 1. Make A New Connection
            SqlConnection sqlConnection = new SqlConnection
                ("Data Source=.;Initial Catalog=SKU;Integrated Security=true");

            // 2. Make A Command
            SqlCommand sqlCommand = sqlConnection.CreateCommand();
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.CommandText = "Drafts_SelectAllWithPaging";
            total = 0;

            SqlParameter pageSizeParameter = sqlCommand.Parameters.Add("@pageSize", System.Data.SqlDbType.Int);
            pageSizeParameter.Value = pageSize;
            SqlParameter pageIndexParameter = sqlCommand.Parameters.Add("@pageIndex", System.Data.SqlDbType.Int);
            pageIndexParameter.Value = pageIndex;

            NewMessage tmpNewmessage = null;
            try
            {
                sqlConnection.Open();
                // 3.Read Data
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();

                while (sqlDataReader.Read())
                {
                    tmpNewmessage = new NewMessage();
                    tmpNewmessage.ID = sqlDataReader.GetInt32(0);
                    if (sqlDataReader.IsDBNull(1) == false)
                        tmpNewmessage.Title = sqlDataReader.GetString(1);
                    total = sqlDataReader.GetInt32(2);

                    allNewMessages.Add(tmpNewmessage);
                }
                sqlConnection.Close();
            }
            catch (SqlException sqlExeption)
            {
                sqlConnection.Close();
                return null;
            }
            return allNewMessages;
        }

        public bool InsertMessage(NewMessage newMessage)
        {
            // 1. Make A New Connection
            SqlConnection sqlConnection = new SqlConnection
              ("Data Source=.;Initial Catalog=SKU;Integrated Security=true");

            // 2. Make A Command
            SqlCommand sqlCommand = sqlConnection.CreateCommand();
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.CommandText = "Insert_toDB";

            SqlParameter receiverParameter = sqlCommand.Parameters.Add("@receiver", System.Data.SqlDbType.NVarChar);
            receiverParameter.Value = newMessage.Receiver;
            SqlParameter titleParameter = sqlCommand.Parameters.Add("@title", System.Data.SqlDbType.NVarChar);
            titleParameter.Value = newMessage.Title;
            SqlParameter bodyParameter = sqlCommand.Parameters.Add("@body", System.Data.SqlDbType.NVarChar);
            bodyParameter.Value = newMessage.Body;
            SqlParameter attachementParameter = sqlCommand.Parameters.Add("@att", System.Data.SqlDbType.NVarChar);
            attachementParameter.Value = newMessage.Attachement;

            try
            {
                sqlConnection.Open();
                //3.Read Data
                int numAffected = sqlCommand.ExecuteNonQuery();
                sqlConnection.Close();
                if (numAffected > 0)
                    return true;
                else
                    return false;
            }
            catch (SqlException ex)
            {
                sqlConnection.Close();
                return false;
            }


        }
    }
}
