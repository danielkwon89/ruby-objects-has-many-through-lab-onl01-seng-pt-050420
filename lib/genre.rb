class Genre
<<<<<<< HEAD
attr_accessor :name

@@all = []

def initialize(name)
    @name = name
    Genre.all << self
end

def self.all
    @@all
end

def songs
    Song.all.select{|song| song.genre == self}
end

def artists
    Song.all.map{|song| song.artist if song.genre == self}
end
=======
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
>>>>>>> 7d992089342e99aa9e1223ba45b302bd840839c2
end