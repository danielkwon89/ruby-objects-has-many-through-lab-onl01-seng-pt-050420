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
end