class Song
<<<<<<< HEAD
attr_accessor :title, :artist, :genre

@@all = []

def initialize(title, artist, genre)
    @title = title
    @artist = artist
    @genre = genre
    Song.all << self
end

def self.all
    @@all
end
=======
  attr_accessor :name, :artist, :genre
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    self.all << self
  end
>>>>>>> 7d992089342e99aa9e1223ba45b302bd840839c2
end