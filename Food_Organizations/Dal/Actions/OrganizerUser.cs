using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dal.Actions
{
    public class OrganizerUser
    {
        public static FoodOrganizationsEntities db = new FoodOrganizationsEntities();
        public static bool AddOrganizerUser(Dal.Organizer o)
        {
            try
            {
                db.Organizers.Add(o);
                db.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        public static bool RemoveOrganizerUser(Dal.Organizer o)
        {
            try
            {
                db.Organizers.Remove(o);
                db.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public static List<Organizer> GetOrganizer()
        {
         return   db.Organizers.ToList();
        }
    }
}
