class Song
  attr_reader :name, :artist, :genre

  # Class variables

  @@count = 0
  @@artists = []
  @@genres = []

  # Instance Methods

  def initialize(song_name, artist, genre)
    @@count += 1
    @@artists << artist
    @@genres << genre
    @name = song_name
    @artist = artist
    @genre = genre
  end #initialize

  # Class Methods

  def self.count
    @@count
  end #count

  def self.artists
    unique_artists = []
    @@artists.each {|artist| unique_artists << artist if !unique_artists.include? (artist)}
    unique_artists
  end #artists

  def self.genres
    unique_genres = []
    @@genres.each {|genre| unique_genres << genre if !unique_genres.include? (genre)}
    unique_genres
  end #genres

  def self.genre_count
    genre_hsh = {}
    @@genres.each do |genre|
      if !genre_hsh[genre]
        genre_hsh[genre] = 1
      else
        genre_hsh[genre] += 1
      end #if
    end #do
    genre_hsh
  end #genre_count

  def self.artist_count
    artist_hsh = {}
    @@artists.each do |artist|
      if !artist_hsh[artist]
        artist_hsh[artist] = 1
      else
        artist_hsh[artist] += 1
      end #if
    end #do
    artist_hsh
  end #artist_count
end #Song
