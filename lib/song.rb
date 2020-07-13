class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    genre_counts = {}
    
    @@genres.each do |i|
      if genre_counts.include?(i)
        genre_counts[i] += 1 
      else
        genre_counts[i] = 1
      end
    end
    
    genre_counts
  end
  
  def self.artist_count
    artist_counts = {}
    
    @@artists.each do |i|
      if artist_counts.include?(i)
        artist_counts[i] += 1 
      else
        artist_counts[i] = 1
      end
    end
    
    artist_counts
  end
  
end