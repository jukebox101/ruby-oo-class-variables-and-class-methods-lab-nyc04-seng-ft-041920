class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []
    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << self.artist
        @@genres << self.genre
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
        new_hash = {}
        new_array = @@genres.uniq
        counter = 0
        new_array.each do |item|
            new_hash.store(new_array[counter],@@genres.count(new_array[counter]))
            counter+=1
        end
        new_hash
    end

    def self.artist_count
        new_hash = {}
        new_array = @@artists.uniq
        counter = 0
        new_array.each do |item|
            new_hash.store(new_array[counter],@@artists.count(new_array[counter]))
            counter+=1
        end
        new_hash
    end
end