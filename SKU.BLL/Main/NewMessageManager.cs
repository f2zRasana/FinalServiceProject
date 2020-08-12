using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SKU.DAO.Main;
using SKU.Entities.Main;

namespace SKU.BLL.Main
{
    public class NewMessageManager
    {
        public List<NewMessage> SelectAllWithPaging(int pageIndex, int pageSize, out int total)
        {
            NewMessageDao newMessageDao = new NewMessageDao();
            return newMessageDao.SelectAllWithPaging(pageIndex, pageSize, out total);
        }

        public bool InsertMessage(NewMessage newMessage)
        {
            NewMessageDao newMessageDao = new NewMessageDao();
            return newMessageDao.InsertMessage(newMessage);
        }
    }
}
