using DataAcces.Interface;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Api_Xamarin_project.Controllers
{
    [Authorize("user")]
    [Route("api/[controller]")]
    [ApiController]
    public class FavorisController : ControllerBase
    {
        private IFavorisIdMovieService _service;

        public FavorisController(IFavorisIdMovieService service)
        {
            _service = service;
        }
        [HttpGet("{idUser}")]
        public IActionResult GetFavoris(int idUser)
         {
            try
            {
                return Ok(_service.GetIdMovieFavoris(idUser));
            }
            catch (Exception)
            {

                return BadRequest();
            }
            
        }
    }
}
