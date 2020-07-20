using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SKU.Entities.Labs;

namespace SKU.DAO.Labs
{
    public class LabDao
    {
        public List<Lab> SelectAll()
        {
            List<Lab> allLabs = new List<Lab>();

            // 1. Make A New Connection
            SqlConnection sqlConnection = new SqlConnection
                ("Data Source=.;Initial Catalog=WebTest;User ID=Test;Password=123456");

            // 2. Make A Command
            SqlCommand sqlCommand = sqlConnection.CreateCommand();
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.CommandText = "Lab_SelectAll";

            Lab tmpLab = null;
            try
            {
                sqlConnection.Open();
                // 3.Read Data
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();

                while (sqlDataReader.Read())
                {
                    tmpLab = new Lab();
                    tmpLab.ID = sqlDataReader.GetInt32(0);
                    if (sqlDataReader.IsDBNull(1) == false)
                        tmpLab.Title = sqlDataReader.GetString(1);
                    if (sqlDataReader.IsDBNull(2) == false)
                        tmpLab.FilePathImage = sqlDataReader.GetString(2);
                    if (sqlDataReader.IsDBNull(3) == false)
                        tmpLab.Item1 = sqlDataReader.GetString(3);
                    if (sqlDataReader.IsDBNull(4) == false)
                        tmpLab.Item2 = sqlDataReader.GetString(4);
                    if (sqlDataReader.IsDBNull(5) == false)
                        tmpLab.Item3 = sqlDataReader.GetString(5);
                    if (sqlDataReader.IsDBNull(6) == false)
                        tmpLab.Item4 = sqlDataReader.GetString(6);
                    if (sqlDataReader.IsDBNull(7) == false)
                        tmpLab.Item5 = sqlDataReader.GetString(7);
                    if (sqlDataReader.IsDBNull(8) == false)
                        tmpLab.Item6 = sqlDataReader.GetString(8);
                    if (sqlDataReader.IsDBNull(9) == false)
                        tmpLab.Item7 = sqlDataReader.GetString(9);
                    if (sqlDataReader.IsDBNull(10) == false)
                        tmpLab.Item8 = sqlDataReader.GetString(10);
                    allLabs.Add(tmpLab);
                }
                sqlConnection.Close();
            }
            catch (SqlException sqlExeption)
            {
                sqlConnection.Close();
                return null;
            }
            return allLabs;
        }
    }
}
