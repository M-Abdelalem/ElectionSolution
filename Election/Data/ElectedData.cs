using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Election.Data
{
    public class ElectedData
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
        String image;

        public String Image
        {
            get { return image; }
            set { image = value; }
        }
        string cardnumber;

        public string Cardnumber
        {
            get { return cardnumber; }
            set { cardnumber = value; }
        }

       
        int number;

        public int Number
        {
            get { return number; }
            set { number = value; }
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