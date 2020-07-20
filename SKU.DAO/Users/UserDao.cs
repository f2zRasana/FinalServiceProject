using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SKU.Entities.Users;

namespace SKU.DAO.Users
{
    public class UserDao
    {
        public bool InsertUser(User user)
        {
            // 1. Make A New Connection
            SqlConnection sqlConnection = new SqlConnection
                ("Data Source=.;Initial Catalog=WebTest;User ID=Test;Password=123456");

            // 2. Make A Command
            SqlCommand sqlCommand2 = sqlConnection.CreateCommand();
            sqlCommand2.CommandType = CommandType.StoredProcedure;
            sqlCommand2.CommandText = "User_IsExist";

            SqlParameter usernameParameter2 = sqlCommand2.Parameters.Add("@username", System.Data.SqlDbType.NVarChar);
            usernameParameter2.Value = user.Email;
            try
            {
                sqlConnection.Open();
                //3.Read Data
                SqlDataReader sqlDataReader= sqlCommand2.ExecuteReader();
                int numAffected2 = 0;
                while (sqlDataReader.Read())
                    numAffected2++;
                sqlConnection.Close();
                if (numAffected2 > 0)
                {
                    return false;
                }
                else
                {
                    SqlCommand sqlCommand = sqlConnection.CreateCommand();
                    sqlCommand.CommandType = CommandType.StoredProcedure;
                    sqlCommand.CommandText = "User_Insert";

                    SqlParameter usernameParameter = sqlCommand.Parameters.Add("@username", System.Data.SqlDbType.NVarChar);
                    usernameParameter.Value = user.Email;
                    SqlParameter passwordParameter = sqlCommand.Parameters.Add("@password", System.Data.SqlDbType.NVarChar);
                    passwordParameter.Value = user.Password;

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
            catch (SqlException ex)
            {
                sqlConnection.Close();
                return false;
            }
            
        }

        public bool LoginUser(User user)
        {
            // 1. Make A New Connection
            SqlConnection sqlConnection = new SqlConnection
                ("Data Source=.;Initial Catalog=WebTest;User ID=Test;Password=123456");

            // 2. Make A Command
            SqlCommand sqlCommand = sqlConnection.CreateCommand();
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.CommandText = "User_Login";

            SqlParameter usernameParameter = sqlCommand.Parameters.Add("@username", System.Data.SqlDbType.NVarChar);
            usernameParameter.Value = user.Email;
            SqlParameter passwordParameter = sqlCommand.Parameters.Add("@password", System.Data.SqlDbType.NVarChar);
            passwordParameter.Value = user.Password;

            try
            {
                sqlConnection.Open();
                //3.Read Data
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                int numAffected = 0;
                while (sqlDataReader.Read())
                    numAffected++;
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
