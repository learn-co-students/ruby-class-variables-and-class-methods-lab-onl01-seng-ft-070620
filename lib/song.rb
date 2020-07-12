require 'pry'

class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []

    
    def initialize(name, artist, genre)
        @name = name
        @@count += 1
        @artist = artist
            @@artists << artist
        @genre = genre
            @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_count = {}
        @@genres.each do |item|
            if genre_count.keys.include?(item)
                genre_count[item] += 1
            else
                genre_count[item] = 1
            end
        end
        genre_count
    end

    def self.artist_count
        artist_count = {}
        @@artists.each do |item|
            if artist_count.keys.include?(item)
                artist_count[item] += 1
            else
                artist_count[item] = 1
            end
        end
        artist_count
    end

end