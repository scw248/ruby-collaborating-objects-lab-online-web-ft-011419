class Song
  
attr_accessor :name, :artist

@@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  
  def self.new_by_filename(file_name)
    song = self.new(file_name)
    song.title = file_name.split(" - ")[1]
    song
  end
  
  def self.all
    @@all
  end

end