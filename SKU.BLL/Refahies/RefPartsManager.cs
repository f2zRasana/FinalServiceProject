using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SKU.DAO.Refahies;
using SKU.Entities.Refahies;

namespace SKU.BLL.Refahies
{
    public class RefPartsManager
    {
        public List<RefParts> SelectAllParts()
        {
            RefPartsDao refPartsDao = new RefPartsDao();
            return refPartsDao.SelectAllParts();
        }
    }
}
