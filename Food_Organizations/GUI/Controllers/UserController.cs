using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using DTO;
using BL;
using System.Text;

namespace GUI.Controllers
{
    [RoutePrefix("api/Users")]
    public class UserController : ApiController
    {
        [Route("CreateNeedyUser")]
        [HttpPost]
        public IHttpActionResult AddNeedyUser([FromBody] DTO.NeedyDTO u)
        {
            var result = BL.NeedyUserBL.AddNeedyUser(u);

          if (result)
                return Ok();
            return BadRequest();
        }
        [Route("RemoveNeedyUser")]
        [HttpDelete]
        public IHttpActionResult RemoveNeedyUser([FromBody] DTO.NeedyDTO u)
        {
            var result = BL.NeedyUserBL.RemoveNeedyUser(u);
           if (result)
                return Ok();
            return BadRequest();

        }

        [Route("CreateOrganizerUser")]
        [HttpPost]
        public IHttpActionResult AddOrganizerUser([FromBody] DTO.OrganizerDTO o)
        {
            var result = BL.OrganizerUserBL.AddOrganizerUser(o);
           if (result)
                return Ok();
            return BadRequest();

        }
        [Route("RemoveOrganizerUser")]
        [HttpDelete]
        public IHttpActionResult RemoveOrganizerUser([FromBody] DTO.OrganizerDTO o)
        {
            var result = BL.OrganizerUserBL.RemoveOrganizerUser(o);
            if (result)
                return Ok();
            return BadRequest();

        }
        [Route("GetOrganizerUser")]
        [HttpGet]
        //public  List<DTO.OrganizerDTO> GetOrganizer()
        //{
        //    return BL.OrganizationBL.GetOrganizer();
        //}
        [Route("CreateVolunteerUser")]
        [HttpPost]
        public IHttpActionResult AddVolunteerUser([FromBody] DTO.VolunteerDTO v)
        {
            var result = BL.VolunteerUserBL.AddVolunteerUser(v);
            if (result)

                return Ok();
            return BadRequest();

        }
        [Route("RemoveVolunteerUser")]
        [HttpDelete]
        public IHttpActionResult RemoveVolunteerUser([FromBody] DTO.VolunteerDTO v)
        {
            var result = BL.VolunteerUserBL.RemoveVolunteerUser(v);

            if (result)

                return Ok();
            return BadRequest();

        }

    }
}