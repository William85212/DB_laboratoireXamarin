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
    public class PersonnerByFilmController : ControllerBase
    {
        private IPersonByFilmService _service;
        public PersonnerByFilmController(IPersonByFilmService service)
        {
            _service = service;
        }

        [HttpGet("{idMovie}")]
        public IActionResult GetPersonByFilm(int idMovie)
        {
            try
            {
                return Ok(_service.GetPerson(idMovie).Select(pbf => pbf));
            }
            catch (Exception)
            {

                return StatusCode((int)HttpStatusCode.InternalServerError);
            }
        }
    }
}
