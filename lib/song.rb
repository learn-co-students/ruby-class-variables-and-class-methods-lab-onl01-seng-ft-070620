require 'pry'

class Song 
  attr_accessor :name, :artist, :genre 
  
    @@count = 0 
    @@genres = []
    @@artists = []
 
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
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
   genre_hash = {}
   @@genres.each do |names| 
   if genre_hash.include?(names) 
      genre_hash[names] += 1
    else 
      genre_hash[names] = 1 
   end 
   end 
   genre_hash
  end
  
  def self.artist_count
       artist_hash = {}
   @@artists.each do |names| 
   if artist_hash.include?(names) 
      artist_hash[names] += 1
    else 
      artist_hash[names] = 1 
   end 
   end 
   artist_hash
  end 
end 
