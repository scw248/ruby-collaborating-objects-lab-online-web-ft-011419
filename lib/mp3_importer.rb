require "pry"
class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.glob
  end
  
  def import
    Song.new_by_filename(file)
  end
  
end