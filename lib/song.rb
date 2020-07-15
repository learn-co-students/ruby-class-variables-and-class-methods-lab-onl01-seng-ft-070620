require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.artists
    return @@artists.uniq
  end

  def self.genres
    return @@genres.uniq
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |element|
      # binding.pry
      if genre_hash[element] == nil
        genre_hash[element] = 1
      else
        genre_hash[element] += 1
      end
    end
    return genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |element|
      # binding.pry
      if artist_hash[element] == nil
        artist_hash[element] = 1
      else
        artist_hash[element] += 1
      end
    end
    return artist_hash
  end

end
