using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SKU.DAO.Labs;
using SKU.Entities.Labs;

namespace SKU.BLL.Labs
{
    public class LabManager
    {
        public List<Lab> SelectAll()
        {
            LabDao labDao = new LabDao();
            return labDao.SelectAll();
        }
    }
}
