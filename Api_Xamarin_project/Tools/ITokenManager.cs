using DataAcces.Models;

namespace Api_Xamarin_project.Tools
{
    public interface ITokenManager
    {
        string GenerateJwt(UserModel user);
    }
}