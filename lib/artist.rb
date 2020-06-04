<<<<<<< HEAD
require 'pry'

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    Artist.all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select{|song| song.artist.name == self.name}
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def genres
    # binding.pry
    Song.all.map{|song| song.genre if song.artist == self}
  end
=======
class Artist
  attr_accessor :name
  
  @@all = []
  
   def initialize(name)
     @name = name
     @@all << self
   end
   
   def self.all
     @@all
   end
   
   def songs(name)
     Song.all.select{|artist| artist.name == name}
   end
>>>>>>> 7d992089342e99aa9e1223ba45b302bd840839c2
end