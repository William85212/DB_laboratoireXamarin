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
    public class MovieController : ControllerBase
    {
        private IMovieService _service;
        public MovieController(IMovieService service)
        {
            _service = service; 
        }

        [HttpGet]
        public IActionResult Get()
        {
            try
            {
                return Ok(_service.GetAll().Select(m => m));
            }
            catch (Exception)
            {
                return StatusCode((int)HttpStatusCode.InternalServerError);
            }
        }

        [HttpGet("{categorie}")]
        public IActionResult Get(string categorie)
        {
            try
            {
                return Ok(_service.GetByCategorie(categorie).Select(m => m));
            }
            catch (Exception)
            {

                return StatusCode((int)HttpStatusCode.InternalServerError);
            }
        }

        [HttpGet("cat")]
        public IActionResult GetAllCategorie()
        {
            try
            {
                return Ok(_service.GetAllCategrie());
            }
            catch (Exception)
            {

                return BadRequest();
            }
        }
    }
}
