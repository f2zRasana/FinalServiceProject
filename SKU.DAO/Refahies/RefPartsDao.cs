using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SKU.Entities.Refahies;

namespace SKU.DAO.Refahies
{
    public class RefPartsDao
    {
        public List<RefParts> SelectAllParts()
        {
            List<RefParts> allParts = new List<RefParts>();


            // 1. Make A New Connection
            SqlConnection sqlConnection = new SqlConnection
                ("Data Source=.;Initial Catalog=SKU;Integrated Security=true");

            // 2. Make A Command
            SqlCommand sqlCommand = sqlConnection.CreateCommand();
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.CommandText = "Refahi_SelectAll";

            RefParts tmpParts = null;
            try
            {
                sqlConnection.Open();
                // 3.Read Data
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();


                while (sqlDataReader.Read())
                {
                    tmpParts = new RefParts();
                    tmpParts.ID = sqlDataReader.GetInt32(0);
                    if (sqlDataReader.IsDBNull(1) == false)
                        tmpParts.Title = sqlDataReader.GetString(1);
                    if (sqlDataReader.IsDBNull(2) == false)
                        tmpParts.Item1 = sqlDataReader.GetString(2);
                    if (sqlDataReader.IsDBNull(3) == false)
                        tmpParts.Item1 = sqlDataReader.GetString(3);
                    if (sqlDataReader.IsDBNull(4) == false)
                        tmpParts.Item2 = sqlDataReader.GetString(4);
                    if (sqlDataReader.IsDBNull(5) == false)
                        tmpParts.Item3 = sqlDataReader.GetString(5);


                    allParts.Add(tmpParts);
                }


                sqlConnection.Close();
            }
            catch (SqlException sqlExeption)
            {
                sqlConnection.Close();
                return null;
            }
            return allParts;
        }
    }
}
