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

        public bool HaveAccess(string email)
        {
            // 1. Make A New Connection
            SqlConnection sqlConnection = new SqlConnection
                ("Data Source=.;Initial Catalog=WebTest;User ID=Test;Password=123456");

            // 2. Make A Command
            SqlCommand sqlCommand = sqlConnection.CreateCommand();
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.CommandText = "User_HaveAccess";

            SqlParameter usernameParameter = sqlCommand.Parameters.Add("@username", System.Data.SqlDbType.NVarChar);
            usernameParameter.Value = email;
            bool access = false;
            try
            {
                sqlConnection.Open();
                //3.Read Data
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                while (sqlDataReader.Read())
                {
                    access= sqlDataReader.GetBoolean(0);
                }
                sqlConnection.Close();
            }
            catch (SqlException ex)
            {
                sqlConnection.Close();
            }
            return access;
        }

        public User SelectUser(string email)
        {
            // 1. Make A New Connection
            SqlConnection sqlConnection = new SqlConnection
                ("Data Source=.;Initial Catalog=WebTest;User ID=Test;Password=123456");

            // 2. Make A Command
            SqlCommand sqlCommand = sqlConnection.CreateCommand();
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.CommandText = "User_Select";

            SqlParameter usernameParameter = sqlCommand.Parameters.Add("@username", System.Data.SqlDbType.NVarChar);
            usernameParameter.Value = email;

            User user= new User();
            try
            {
                sqlConnection.Open();
                //3.Read Data
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                while (sqlDataReader.Read())
                {
                    user.ID = sqlDataReader.GetInt32(0);
                    if (sqlDataReader.IsDBNull(1) == false)
                        user.Name = sqlDataReader.GetString(1);
                    if (sqlDataReader.IsDBNull(2) == false)
                        user.Family = sqlDataReader.GetString(2);
                    if (sqlDataReader.IsDBNull(3) == false)
                        user.Father = sqlDataReader.GetString(3);
                    if (sqlDataReader.IsDBNull(4) == false)
                        user.Mobile = sqlDataReader.GetInt64(4);
                    if (sqlDataReader.IsDBNull(5) == false)
                        user.Address = sqlDataReader.GetString(5);
                    if (sqlDataReader.IsDBNull(6) == false)
                        user.Education = sqlDataReader.GetString(6);
                    if (sqlDataReader.IsDBNull(7) == false)
                        user.PostalCard = sqlDataReader.GetInt32(7);
                    if (sqlDataReader.IsDBNull(8) == false)
                        user.City = sqlDataReader.GetString(8);
                    if (sqlDataReader.IsDBNull(9) == false)
                        user.UserType = sqlDataReader.GetString(9);
                    if (sqlDataReader.IsDBNull(10) == false)
                        user.PersonType = sqlDataReader.GetString(10);
                    if (sqlDataReader.IsDBNull(11) == false)
                        user.Employment = sqlDataReader.GetString(11);
                    if (sqlDataReader.IsDBNull(12) == false)
                        user.Birth = sqlDataReader.GetDateTime(12);
                    if (sqlDataReader.IsDBNull(13) == false)
                        user.Country = sqlDataReader.GetString(13);
                    if (sqlDataReader.IsDBNull(14) == false)
                        user.NationalCode = sqlDataReader.GetInt32(14);
                    if (sqlDataReader.IsDBNull(15) == false)
                        user.Gender = sqlDataReader.GetBoolean(15);
                    if (sqlDataReader.IsDBNull(16) == false)
                        user.Organization = sqlDataReader.GetString(16);
                    if (sqlDataReader.IsDBNull(17) == false)
                        user.Phone = sqlDataReader.GetInt64(17);
                    if (sqlDataReader.IsDBNull(18) == false)
                        user.Site = sqlDataReader.GetString(18);
                    if (sqlDataReader.IsDBNull(19) == false)
                        user.Email = sqlDataReader.GetString(19);
                    if (sqlDataReader.IsDBNull(20) == false)
                        user.Photo = sqlDataReader.GetString(20);
                    if (sqlDataReader.IsDBNull(21) == false)
                        user.Password = sqlDataReader.GetString(21);
                    
                }
                sqlConnection.Close();
            }
            catch (SqlException ex)
            {
                sqlConnection.Close();
            }
            return user;
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
