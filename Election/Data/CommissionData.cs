using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Election.Data
{
    public class CommissionData
    {
        int id;

        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        int number;

        public int Number
        {
            get { return number; }
            set { number = value; }
        }
        String description;

        public String Description
        {
            get { return description; }
            set { description = value; }
        }
    }
}