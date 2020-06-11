using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using Dal;
namespace BL
{
  public  class NeedyUserBL
    {
        public static bool AddNeedyUser(DTO.NeedyDTO u)
        {
            return Dal.Actions.NeedyUser.AddNeedyUser(Converters.NeedyConverters.GetNeedy(u));
        }

        public static bool RemoveNeedyUser(DTO.NeedyDTO u)
        {
            return Dal.Actions.NeedyUser.RemoveNeedyUser(Converters.NeedyConverters.GetNeedy(u));
        }
    }
}
