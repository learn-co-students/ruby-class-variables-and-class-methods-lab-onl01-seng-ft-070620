## REWORK

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
##       that removes duplicates.
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

    @@artists = []
    @@genres = []
    @@count = 0

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre 
        @@artists << artist
        @@count += 1
        @@genres << genre 
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
        hash = {}
        @@genres.each do |genre|
            if hash[genre]
                hash[genre] += 1
            else 
                hash[genre] = 1
            end
        end
        hash
    end

    def self.artist_count
        hash = {}
        @@artists.each do |artist|
            if hash[artist]
                hash[artist] += 1
            else 
                hash[artist] = 1
            end
        end
        hash
    end
end 


## TESTING CODE:

# song1 = Song.New("Umbrella", "Rihanna", "pop")
# song2 = Song.New("Lie", "Rihanna", "pop")
# song3 = Song.New("Lose Yourself", "Eminem", "rap")
