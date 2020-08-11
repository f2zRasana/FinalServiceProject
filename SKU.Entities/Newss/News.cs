using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SKU.Entities.Newss
{
   public class News
    {
        public int ID { get; set; }
        public DateTime PublishedDate { get; set; }
        public string Title { get; set; }
        public string Body { get; set; }
        public string NewsSource { get; set; }
        public string NewsDigest { get; set; }
        public string FilePathImage { get; set; }
        public int NumVisit { get; set; }
        public string PageName { get; set; }
    }
}
