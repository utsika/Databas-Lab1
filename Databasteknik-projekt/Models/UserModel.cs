namespace Databasteknik_projekt.Models
{
    public class UserModel
    {
        public int UserID { get; set; }
        public string UserName { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }

        //Konstruktor som sätter standardvärden
        public UserModel() 
        { 
            UserID = 0;
            UserName = "NewUser";
            Email = "exampleUser@example.com";
            Password = "password";
        }

        //Konstruktor som tar alla attribut
        public UserModel(int userID, string userName, string email, string password)
        {
            UserID = userID;
            UserName = userName;
            Email = email;
            Password = password;
        }
    }
}
