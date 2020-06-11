using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Web.Http;

namespace GUI.Controllers
{
    [RoutePrefix("api/Organization")]
    public class OrganizationController : ApiController
    {
        [Route("GetOrganization")]
        [HttpGet]
        public List<DTO.OrganizationDTO> GetOrganization()
        {
            return BL.OrganizationBL.GetOrganization();
        }
          [Route("CreateOrganization")]
        [HttpPost]
        public IHttpActionResult  AddOrganization([FromBody] DTO.OrganizationDTO o)
        {
            var result = BL.OrganizationBL.AddOrganization(o);

            if (result)

                return Ok();
            return BadRequest();


        }
        [Route("RemoveOrganization")]
        [HttpDelete]
        public IHttpActionResult RemoveOrganization([FromBody] DTO.OrganizationDTO o)
        {
            
            var result = BL.OrganizationBL.RemoveOrganization(o);

            if (result)

                return Ok();
            return BadRequest();
        }
       
        //[Route("UpdateOrganization")]
        //[HttpPut]
        //public  
    }
}
