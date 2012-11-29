//Copyright (C) Microsoft Corporation.  All rights reserved.

using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Text;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;
using System.Reflection.Emit;
using System.Threading;

namespace PSPITS.COMMON
{
    public static class DateTimeHandler
    { 
    public static string Month (DateTime date)
    {

        string month = string.Empty;
        if (IsDateTime(date)) 
        {
           
            switch (date.Month)
            {
                case 1: month = "January"; break;
                case 2: month = "February"; break;
                case 3: month = "March"; break;
                case 4: month = "April"; break;
                case 5: month = "May"; break;
                case 6: month = "June"; break;
                case 7: month = "July"; break;
                case 8: month = "August"; break;
                case 9: month = "September"; break;
                case 10: month = "October"; break;
                case 11: month = "November"; break;
                case 12: month = "December"; break;
              
            }
           
        }
        return month;
    
    }

    private static bool IsDateTime(object input)
    {

        var isNumeric = false;

        DateTime actualValue;

        if (input != null && DateTime.TryParse(input.ToString(), out actualValue))
        {

            isNumeric = true;

        }

       return isNumeric;

    }
   
    }
}
