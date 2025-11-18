namespace Databasteknik_projekt.Models
{
    public class ArtistModel
    {
        public int ArtistID { get; set; }
        public string ArtistName { get; set; }
      

        //Konstruktor som tar alla attribut       
        public ArtistModel(int artistID, string artistName)
        {
            ArtistID = artistID;
            ArtistName = artistName;
        }
    }
}
