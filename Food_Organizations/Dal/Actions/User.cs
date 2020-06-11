using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dal.Actions
{
  public  class User
    {
    
        public static bool CreateUser(Dal.User user)
        {
            using (FoodOrganizationsEntities context = new FoodOrganizationsEntities())
                try
                {
                    context.Users.Add(user);
                    context.SaveChanges();
                    return true;
                 }
                catch(Exception e)
                {
                    return false;
                }
        }
    }
}
