using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SKU.Entities.Main
{
   public class NewMessage
    {
        public int ID { get; set; }
        public string Receiver { get; set; }
        public string Title { get; set; }
        public string Body { get; set; }
        public string Attachement { get; set; }
    }
}
