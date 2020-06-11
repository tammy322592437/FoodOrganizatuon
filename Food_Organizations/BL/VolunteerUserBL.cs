using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL
{
    public class VolunteerUserBL
    {
        public static bool AddVolunteerUser(DTO.VolunteerDTO v)
        {
            return Dal.Actions.VolunteerUser.AddVolunteerUser(Converters.VolunteerConverters.GetVolunteer(v));


        }
        public static bool RemoveVolunteerUser(DTO.VolunteerDTO v)
        {
            return Dal.Actions.VolunteerUser.RemoveVolunteerUser(Converters.VolunteerConverters.GetVolunteer(v));
        }
    }
}
