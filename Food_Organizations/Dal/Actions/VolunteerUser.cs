using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dal.Actions
{
    public class VolunteerUser
    {
        public static FoodOrganizationsEntities db = new FoodOrganizationsEntities();
        public static bool AddVolunteerUser(Dal.Volunteer v)
        {
            try
            {
                db.Volunteers.Add(v);
                db.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        public static bool RemoveVolunteerUser(Dal.Volunteer v)
        {
            try
            {
                db.Volunteers.Remove(v);
                db.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
