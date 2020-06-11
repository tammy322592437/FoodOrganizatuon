using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dal.Actions
{
    public class NeedyUser
    {
        public static FoodOrganizationsEntities db = new FoodOrganizationsEntities();
        public static bool AddNeedyUser(Dal.Needy u)
        {
            try
            {
                db.Needies.Add(u);
                db.SaveChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        public static bool RemoveNeedyUser(Dal.Needy u)
        {
            try
            {
                db.Needies.Remove(u);
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
