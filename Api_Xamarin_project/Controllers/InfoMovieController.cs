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
    public class InfoMovieController : ControllerBase
    {
        private IInfoMovieService _service;

        public InfoMovieController(IInfoMovieService service)
        {
            _service = service;
        }
        [HttpGet]
        public IActionResult Get()
        {
            try
            {
                return Ok(_service.Get());
            }
            catch (Exception)
            {

                return StatusCode((int)HttpStatusCode.InternalServerError);
            }
        }
    }
}
