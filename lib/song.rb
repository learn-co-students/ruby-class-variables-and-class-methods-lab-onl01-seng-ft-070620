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
    genres_no_repeats = []
    @@genres.each do |genre|
      if !genres_no_repeats.include?(genre)
        genres_no_repeats << genre
      end
    end
    genres_no_repeats
  end

  def self.artists
    artists_no_repeats = []
    @@artists.each do |artist|
      if !artists_no_repeats.include?(artist)
        artists_no_repeats << artist
      end
    end
    artists_no_repeats
  end

  def self.genre_count
    genres = {}
    @@genres.each do |genre|
      if !genres.include?(genre)
        genres[genre] = 1
      else
        genres[genre] += 1
      end
    end
    genres
  end

  def self.artist_count
    artists = {}
    @@artists.each do |artist|
      if !artists.include?(artist)
        artists[artist] = 1
      else
        artists[artist] += 1
      end
    end
    artists
  end
end
