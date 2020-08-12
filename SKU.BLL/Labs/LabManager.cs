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
        public List<Lab> SelectTitle()
        {
            LabDao labDao = new LabDao();
            return labDao.SelectTitle();
        }

        public List<Lab> SelectAllWithPaging(int pageIndex, int pageSize, out int total)
        {
            LabDao labDao = new LabDao();

            return labDao.SelectAllWithPaging(pageIndex, pageSize, out total);
        }

        public List<Lab> SelectAllLab()
        {
            LabDao labDao = new LabDao();
            return labDao.SelectAllLab();
        }

       
    }
}
