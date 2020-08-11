using SKU.DAO.HeaderImages;
using SKU.Entities.HeaderImages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SKU.BLL.HeaderImages
{
   public class HeaderImageManager
    {
        public HeaderImage GetImage(string title)
        {
            HeaderImageDao headerImageDao = new HeaderImageDao();
            return headerImageDao.GetImage(title);
        }
    }
}
