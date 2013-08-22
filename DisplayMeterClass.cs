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

        public static sec_User ChkUserPwd(string AthUser, string Pwd)
        {
            DisplayMeter_DBDataContext dc = new DisplayMeter_DBDataContext();

            return (from usr in dc.GetTable<sec_User>()
                    where (usr.UserName == AthUser) && (usr.Passwd == Pwd)
                    select usr).SingleOrDefault<sec_User>();
        }

        public static List<stp_get_LastMeter_ByUniqResult> getDetailList(Guid LackUniq)
        {
            DisplayMeter_DBDataContext dc = new DisplayMeter_DBDataContext();
            return dc.stp_get_LastMeter_ByUniq(LackUniq).ToList<stp_get_LastMeter_ByUniqResult>();
        }
     
        #endregion
    }
}
     