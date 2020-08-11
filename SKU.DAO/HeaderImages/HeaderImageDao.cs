using SKU.Entities.HeaderImages;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SKU.DAO.HeaderImages
{
   public class HeaderImageDao
    {
        public HeaderImage GetImage(string title)
        {

            // 1. Make A New Connection
            SqlConnection sqlConnection = new SqlConnection
                ("Data Source=.;Initial Catalog=SKU;Integrated Security=true");

            // 2. Make A Command
            SqlCommand sqlCommand = sqlConnection.CreateCommand();
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.CommandText = "HeaderImage_FilePath";

            SqlParameter titleParameter = sqlCommand.Parameters.Add("@title", System.Data.SqlDbType.NVarChar);
            titleParameter.Value = title;

            HeaderImage tmpHeaderImage = null;
            try
            {
                sqlConnection.Open();
                // 3.Read Data
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();

                while (sqlDataReader.Read())
                {
                    tmpHeaderImage = new HeaderImage();

                    if (sqlDataReader.IsDBNull(0) == false)
                        tmpHeaderImage.FilePathImage = sqlDataReader.GetString(0);

                }
                sqlConnection.Close();
            }
            catch (SqlException sqlExeption)
            {
                sqlConnection.Close();
                return null;
            }
            return tmpHeaderImage;
        }
    }
}
