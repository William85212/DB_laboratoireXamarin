using Api_Xamarin_project.Models;
using Api_Xamarin_project.Tools;
using DataAcces.Interface;
using DataAcces.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Api_Xamarin_project.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserController : ControllerBase
    {
        private IUserService _services;
        private ITokenManager _tokenManager;

        public UserController(IUserService service, ITokenManager tokenManager)
        {
            _services = service;
            _tokenManager = tokenManager;
        }

        [HttpPost]
        public IActionResult Insert(InsertFormModel model)
        {
            if (ModelState.IsValid)
            {
                UserModel userExist = _services.GetAll().ToList().Where(e => e.Email == model.Email).SingleOrDefault();
                
                if (userExist is not null) return BadRequest("Adresse email déja utilisé");

                int newId = _services.Insert(new UserModel
                {
                    Email = model.Email,
                    Password = model.Password
                });

                return Ok($"Enregistrement effectué, l'id est {newId}");
            }
            return BadRequest();
        }

        [HttpPost("login")]
        public IActionResult Login(InsertFormModel mdl)
        {
            UserModel currentUser = _services.Login(mdl.Email, mdl.Password);

            if (currentUser is null) return BadRequest("Invalide Request");

            string token = _tokenManager.GenerateJwt(currentUser);

            UserWithToken u = new UserWithToken
            {
                IdUser = currentUser.IdUser,
                Email = currentUser.Email,
                Token = token
            };

            return Ok(u);
        }
    }
}
