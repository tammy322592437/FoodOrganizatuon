using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using DTO;

namespace BL
{
    public class OrganizationBL
    {
      
        public static bool RemoveOrganization(DTO.OrganizationDTO o)
        {
            return Dal.Actions.Organization.RemoveOrganization(Converters.OrganizationConverters.GetOrganization(o));
        }

        public static bool AddOrganization(DTO.OrganizationDTO o)
        {
          return  Dal.Actions.Organization.AddOrganization(Converters.OrganizationConverters.GetOrganization(o));
        }

        public static List<OrganizationDTO> GetOrganization()
        {
            return Converters.OrganizationConverters.GetListDTO(Dal.Actions.Organization.GetOrganization());
        }

        
    }
}
