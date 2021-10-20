using DataAcces.Interface;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;

namespace Api_Xamarin_project.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DetailsPersonController : ControllerBase
    {
        private IDetailPersonService _service;

        public DetailsPersonController(IDetailPersonService service)
        {
            _service = service;
        }

        [HttpGet("{idPerson}")]
        public IActionResult GetInfoPerson(int idPerson)
        {
            try
            {
                return Ok(_service.GetInfoPerson(idPerson).Select(p => p));
            }
            catch (Exception)
            {
                return StatusCode((int)HttpStatusCode.InternalServerError);
            }
        }
    }
}
