using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL
{
    public class OrganizerUserBL
    {
        public static bool AddOrganizerUser(DTO.OrganizerDTO o)
        {
            return Dal.Actions.OrganizerUser.AddOrganizerUser(Converters.OrganizerConverts.GetOrganizer(o));
        }

        public static bool RemoveOrganizerUser(DTO.OrganizerDTO o)
        {
            return Dal.Actions.OrganizerUser.AddOrganizerUser(Converters.OrganizerConverts.GetOrganizer(o));
        }
        public static List<DTO.OrganizerDTO> GetOrganizer()
        {
           
            List<DTO.OrganizerDTO> l = new List<DTO.OrganizerDTO>();
            Dal.Actions.OrganizerUser.GetOrganizer().ForEach(a => l.Add(Converters.OrganizerConverts.GetOrganizerDTO(a)));
            return l;
        }
    }
}
