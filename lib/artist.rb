require 'pry'

class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self 
        # binding.pry
    end 

    def self.all
        @@all 
    end 
# binding.pry
    def songs
       Song.all.select do |song| 
       song.artist == self 
       end 
    end 

    def new_song(name, genre)
       song = Song.new(name, genre)
       song.artist = self 
    end 

    def genres
 

    end 


end 