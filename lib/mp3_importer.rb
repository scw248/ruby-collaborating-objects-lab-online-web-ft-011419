require "pry"
class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.entries(path).filter { |file| file != "." && file != ".." }
  end
  
  def import
    #Song.new_by_filename()
  end
  
end