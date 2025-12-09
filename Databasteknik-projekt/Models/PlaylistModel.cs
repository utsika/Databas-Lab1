namespace Databasteknik_projekt.Models
{
    public class PlaylistModel
    {
        public int PlaylistID { get; set; }
        public string PlaylistName { get; set; }
        public int UserID { get; set; }
        public TimeSpan LengthOfPlaylist { get; set; }


        //Konstruktor som tar alla attribut       
        public PlaylistModel(int playlistID, string playlistName, int userID, TimeSpan lengthOfPlaylist)
        {
            PlaylistID = playlistID;
            PlaylistName = playlistName;
            UserID = userID;
            LengthOfPlaylist = lengthOfPlaylist;
        }
    }
}
