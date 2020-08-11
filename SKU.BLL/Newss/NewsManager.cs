using SKU.DAO.Newss;
using SKU.Entities.Newss;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SKU.BLL.Newss
{
   public class NewsManager
    {
        public List<News> GetNews(string pageName)
        {
            NewsDao newsDao = new NewsDao();
            return newsDao.GetNews(pageName);
        }
    }
}
