namespace Databasteknik_projekt.Models
{
    public class SongModel
    {
        public int SongID { get; set; }
        public string Title { get; set; }
        public string Album { get; set; }
        public TimeSpan Length { get; set; }


        //Konstruktor som tar alla attribut       
        public SongModel(int songID, string title, string album, TimeSpan length)
        {
            SongID = songID;
            Title = title;
            Album = album;
            Length = length;
        }
    }
}
