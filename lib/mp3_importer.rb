require "pry"
class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    binding.pry
    Dir.glob(path)
  end
  
  def import
    #Song.new_by_filename()
  end
  
end