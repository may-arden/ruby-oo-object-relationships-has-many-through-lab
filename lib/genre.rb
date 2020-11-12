class Genre
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self 
    end 

    def songs
        Song.all
    end 

    def self.all
        @@all
    end 

    def artists
        Artist.all
    end 

end 