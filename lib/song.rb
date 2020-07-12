## 1. Create a Song class
## 2. Track the number of songs
##      -Set @@count = 0
##      -Increment @@count when a song is
##       is initialized 
##      -Create a #self.count class reader method
## 3. Create a class variable/method to show
##      all artists
##      -Set @@artists = []
##      -Add artist to @@artists array when a
##      -song is initialized.
##      -Create a #self.artists class reader method
##       that removes deuplicates.
## 4. Create a class method that returns an array
##      of all genres of existing songs
##      -Set @@genres = []
##      -Add , value to @@genres array when a
##       song is initialized.
##      -Create a #self.genres class reader method
##       that removes duplicates
## 5. Create a class method to show the #genre_count 
##      -If a genre is already in the hash, then
##       increment value
##      -Else a genre is NOT in the hash, then add
##       it and set value = 1
##      -ex: {"rap" => 5, "rock" =>1}
## 6. Create a class method to show the #artist_count
##      -If an artist is already in the hash, then
##       increment value
##      -Else an artist is NOT in the hash, then
##       add them and set value = 1
##      -ex: {"Beyonce" => 17, "Jay-Z" => 40}

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
        genre_hash = {}
        @@genres.each do |genre|
            if genre_hash[genre]
                genre_hash[genre] += 1
            else
                genre_hash[genre] = 1
            end 
        end 
        genre_hash
    end

    def self.artist_count 
        artist_hash = {}
        @@artists.each do |artist|
            if artist_hash[artist]
                artist_hash[artist] += 1
            else 
                artist_hash[artist] = 1
            end 
        end 
        artist_hash
    end 
    
end 


## TESTING CODE:

# song1 = Song.New("Umbrella", "Rihanna", "pop")
# song2 = Song.New("Lie", "Rihanna", "pop")
# song3 = Song.New("Lose Yourself", "Eminem", "rap")