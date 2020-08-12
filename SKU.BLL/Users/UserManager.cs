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

        public User SelectUser(string email)
        {
            UserDao userDao = new UserDao();
            return userDao.SelectUser(email);
        }

        public bool HaveAccess(string email)
        {
            UserDao userDao = new UserDao();
            return userDao.HaveAccess(email);
        }

        public bool UpdateUserInformation(User user)
        {
            UserDao userDao = new UserDao();
            return userDao.UpdateUserInformation(user);
        }
    }
}
