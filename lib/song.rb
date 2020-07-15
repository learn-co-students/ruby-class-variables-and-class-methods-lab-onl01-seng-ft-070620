class Song
  
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0   #count of songs
  @@genres = []
  @@artists = []     #array for artists
  # @@genre_count = {}
  @@artist_count = {}
  
  def initialize(name, artist, genre)
    @@count += 1       #increases count per song
    @artist = artist
    @name = name
    @genre = genre
    @@genres << genre
    @@artists << artist
  end
  
  def self.count          #method used to count songs
    @@count
  end
  
  def self.genres     #method that returns array of all unique genres of existing songs
    @@genres.uniq    
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    genre_songs = {}
    @@genres.each do |key|
      if genre_songs.include?(key) 
        genre_songs[key] +=1
      else
        genre_songs[key] =1
      end
    end
    genre_songs
  end
  
  def self.artist_count
    artists_hash = {}
    @@artists.each do |key|
      if artists_hash.include?(key)
        artists_hash[key] +=1
      else
        artists_hash[key] =1
      end
    end
    artists_hash
  end
  
  
  
end