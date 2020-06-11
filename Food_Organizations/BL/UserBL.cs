using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using Dal;
namespace BL
{
  public  class UserBL
    {
        public static bool CreateUser(DTO.UserDTO user)
        {
            return Dal.Actions.User.CreateUser(Converters.UserConverters.GetUser(user));
        }
    }
}
