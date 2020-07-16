

class Song
  @@count = 0
  @@genres = []
  @@artists = []
  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    self.name = name
    self.artist = artist
    self.genre = genre
    @@count = @@count + 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    unique_genres = []
    @@genres.each do |genre|
      unique_genres << genre unless unique_genres.include?(genre)
    end
    unique_genres
  end

  def self.artists
    unique_artists = []
    @@artists.each do |artist|
      unique_artists << artist unless unique_artists.include?(artist)
    end
    unique_artists
  end

  def self.genre_count
    genre_hash = {}
    self.genres.each do |genre|
      genre_hash[genre] = 0
    end
    @@genres.each do |genre|
      genre_hash[genre] += 1
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    self.artists.each do |artist|
      artist_hash[artist] = 0
    end
    @@artists.each do |artist|
      artist_hash[artist] += 1
    end
    artist_hash
  end

end
