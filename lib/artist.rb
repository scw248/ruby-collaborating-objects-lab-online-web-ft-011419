require "pry"
class Artist
  
  attr_accessor :name, :songs, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def add_song(song)
    @songs << song
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.find(name)
    self.all.find {|a| a.name == name }
  end
  
  def self.create(name)
    self.new(name) {|a| a.save}
  end
  
  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name) 
  end
  
  def print_songs
    @songs.each { |song| puts song.name }
  end
  
 
  
end