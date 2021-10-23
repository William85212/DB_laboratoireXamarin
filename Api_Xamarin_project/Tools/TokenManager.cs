using DataAcces.Models;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;

namespace Api_Xamarin_project.Tools
{
    public class TokenManager : ITokenManager
    {
        public static string secret = "Ce que vous ne voulez pas";

        public static string issuer = "myapi.com";

        public static string audience = "myconso.com";

        public string GenerateJwt(UserModel user)
        {
            if (user is null)
            {
                throw new InvalidOperationException();
            }

            SymmetricSecurityKey securityKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(secret));
            SigningCredentials credentials = new SigningCredentials(securityKey, SecurityAlgorithms.HmacSha512);

            Claim[] myClaims = new[]
            {
                new Claim(ClaimTypes.Role, "user"),
                new Claim("IdUser" , user.IdUser.ToString()),
                new Claim(ClaimTypes.Email, user.Email.ToString())
            };

            JwtSecurityToken token = new JwtSecurityToken(
                claims: myClaims,
                signingCredentials: credentials,
                expires: DateTime.Now.AddDays(1),
                issuer: issuer,
                audience: audience
                );

            JwtSecurityTokenHandler handler = new JwtSecurityTokenHandler();

            return handler.WriteToken(token);
        }
    }
}
