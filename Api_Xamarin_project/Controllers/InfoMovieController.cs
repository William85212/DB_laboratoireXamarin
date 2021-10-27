using DataAcces.Interface;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;

namespace Api_Xamarin_project.Controllers
{
    [Authorize("user")]
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
        public IActionResult Get(int idMovie)
        {
            try
            {
                return Ok(_service.Get(idMovie));
            }
            catch (Exception)
            {

                return StatusCode((int)HttpStatusCode.InternalServerError);
            }
        }
    }
}
