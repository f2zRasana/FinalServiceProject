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
    public class ReceiverDao
    {
        public List<Receivers> SelectAllWithPaging(int pageIndex, int pageSize, out int total)
        {
            List<Receivers> allReceivers = new List<Receivers>();
            // 1. Make A New Connection
            SqlConnection sqlConnection = new SqlConnection
                ("Data Source=.;Initial Catalog=SKU;Integrated Security=true");

            // 2. Make A Command
            SqlCommand sqlCommand = sqlConnection.CreateCommand();
            sqlCommand.CommandType = CommandType.StoredProcedure;
            sqlCommand.CommandText = "Receivers_SelectAllWithPaging";
            total = 0;

            SqlParameter pageSizeParameter = sqlCommand.Parameters.Add("@pageSize", System.Data.SqlDbType.Int);
            pageSizeParameter.Value = pageSize;
            SqlParameter pageIndexParameter = sqlCommand.Parameters.Add("@pageIndex", System.Data.SqlDbType.Int);
            pageIndexParameter.Value = pageIndex;

            Receivers tmpReceiver = null;
            try
            {
                sqlConnection.Open();
                // 3.Read Data
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();

                while (sqlDataReader.Read())
                {
                    tmpReceiver = new Receivers();
                    tmpReceiver.ID = sqlDataReader.GetInt32(0);
                    if (sqlDataReader.IsDBNull(1) == false)
                        tmpReceiver.Name_Family = sqlDataReader.GetString(1);
                    if (sqlDataReader.IsDBNull(2) == false)
                        tmpReceiver.Email = sqlDataReader.GetString(2);


                    total = sqlDataReader.GetInt32(3);

                    allReceivers.Add(tmpReceiver);
                }
                sqlConnection.Close();
            }
            catch (SqlException sqlExeption)
            {
                sqlConnection.Close();
                return null;
            }
            return allReceivers;
        }
    }
}
