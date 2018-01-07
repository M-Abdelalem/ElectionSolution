using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Election.Data
{
    public class CandidateData
    {
        int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        string name;

        public string Name
        {
            get { return name; }
            set { name = value; }
        }
        int number;

        public int Number
        {
            get { return number; }
            set { number = value; }
        }
        string image;

        public string Image
        {
            get { return image; }
            set { image = value; }
        }
        string information;

        public string Information
        {
            get { return information; }
            set { information = value; }
        }
        int commission_fk;

        public int Commission_fk
        {
            get { return commission_fk; }
            set { commission_fk = value; }
        }
        string commissionname;

        public string Commissionname
        {
            get { return commissionname; }
            set { commissionname = value; }
        }

    }
}