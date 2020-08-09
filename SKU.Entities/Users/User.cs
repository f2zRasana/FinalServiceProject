using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SKU.Entities.Users
{
    public class User
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Family { get; set; }
        public string Father { get; set; }
        public double Mobile { get; set; }
        public string Address { get; set; }
        public string Education { get; set; }
        public int PostalCard { get; set; }
        public string City { get; set; }
        public string UserType { get; set; }
        public string PersonType { get; set; }
        public string Employment { get; set; }
        public DateTime Birth { get; set; }
        public string Country { get; set; }
        public int NationalCode { get; set; }
        public bool Gender { get; set; }
        public string Organization { get; set; }
        public double Phone { get; set; }
        public string Site { get; set; }
        public string Email { get; set; }
        public string Photo { get; set; }
        public string Password { get; set; }
        public bool Access { get; set; }
    }
}
