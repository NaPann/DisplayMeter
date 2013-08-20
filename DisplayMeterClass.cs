using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DisplayMeter
{
    public class DisplayMeterClass
    {
        #region "StoreProcudure"
        public static List<stp_get_LastMeterResult> getLastMaster()
        {
            DisplayMeter_DBDataContext dc = new DisplayMeter_DBDataContext();
            return dc.stp_get_LastMeter().ToList<stp_get_LastMeterResult>();
        }   
        #endregion
    }
}
     