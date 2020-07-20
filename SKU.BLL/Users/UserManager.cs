using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SKU.DAO.Users;
using SKU.Entities.Users;

namespace SKU.BLL.Users
{
    public class UserManager
    {
        public bool InsertUser(User user)
        {
            UserDao userDao = new UserDao();
            return userDao.InsertUser(user);
        }

        public bool LoginUser(User user)
        {
            UserDao userDao = new UserDao();
            return userDao.LoginUser(user);
        }
    }
}
