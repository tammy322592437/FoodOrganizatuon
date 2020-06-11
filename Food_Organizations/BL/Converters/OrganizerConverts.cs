using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL.Converters
{
    public class OrganizerConverts
    {

        public static Dal.Organizer GetOrganizer(DTO.OrganizerDTO OrganizerDTO1)
        {
            Dal.Organizer Organizer = new Dal.Organizer();
            Organizer.Organizer_Id = OrganizerDTO1.Organizer_Id;
            Organizer.Organizer_Kod = OrganizerDTO1.Organizer_Kod;

            return Organizer;
        }
        public static DTO.OrganizerDTO GetOrganizerDTO(Dal.Organizer Organizer)
        {
           DTO. OrganizerDTO OrganizerDTO1 = new  DTO. OrganizerDTO();
            OrganizerDTO1.Organizer_Kod = Organizer.Organizer_Kod;
            OrganizerDTO1.Organizer_Id = Organizer.Organizer_Id;

            return OrganizerDTO1;
        }
        public static List<Dal.Organizer> GetListOrganizer(List<DTO.OrganizerDTO> ls)
        {
            List<Dal.Organizer> dl = new List<Dal.Organizer>();
            foreach (var item in ls)

            {
                dl.Add(GetOrganizer(item));

            }
            return dl;

        }
        public static List<DTO.OrganizerDTO> GetListOrganizerDTO(List<Dal.Organizer> ls)
        {
            List<DTO.OrganizerDTO> dl = new List<DTO.OrganizerDTO>();
            foreach (var item in ls)
            {
                dl.Add(GetOrganizerDTO(item));
            }
            return dl;
        }
    }
}
