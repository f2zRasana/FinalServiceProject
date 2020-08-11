using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SKU.Entities.Newss;
using System.Data.SqlClient;
using System.Data;

namespace SKU.DAO.Newss
{
    public class NewsDao
    {
        public List<News> GetNews(string pageName)
        {
            List<News> allNews = new List<News>();
            // 1. Make A New Connection
            SqlConnection sqlConnection = new SqlConnection
                ("Data Source=.;Initial Catalog=SKU;Integrated Security=true");

            // 2. Make A Command
            SqlCommand sqlCommand = sqlConnection.CreateCommand();
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.CommandText = "ServiceNews_GetNews";

            SqlParameter pageNameParameter = sqlCommand.Parameters.Add("@pageName", System.Data.SqlDbType.NVarChar);
            pageNameParameter.Value = pageName;

            News tmpNews = null;
            try
            {
                sqlConnection.Open();
                // 3.Read Data
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();

                while (sqlDataReader.Read())
                {
                    tmpNews = new News();
                    if (sqlDataReader.IsDBNull(0) == false)
                        tmpNews.PublishedDate = sqlDataReader.GetDateTime(0);

                    if (sqlDataReader.IsDBNull(1) == false)
                        tmpNews.Title = sqlDataReader.GetString(1);

                    if (sqlDataReader.IsDBNull(2) == false)
                        tmpNews.Body = sqlDataReader.GetString(2);

                    if (sqlDataReader.IsDBNull(3) == false)
                        tmpNews.FilePathImage = sqlDataReader.GetString(3);

                    allNews.Add(tmpNews);
                }
                sqlConnection.Close();
            }
            catch (SqlException sqlExeption)
            {
                sqlConnection.Close();
                return null;
            }
            return allNews;
        }
    }
}
