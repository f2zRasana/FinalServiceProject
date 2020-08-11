using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SKU.DAO.Main;
using SKU.Entities.Main;

namespace SKU.BLL.Main
{
    public class ReceiverManager
    {
        public List<Receivers> SelectAllWithPaging(int pageIndex, int pageSize, out int total)
        {
            ReceiverDao receiverDao = new ReceiverDao();
            return receiverDao.SelectAllWithPaging(pageIndex, pageSize, out total);

        }
    }
}
