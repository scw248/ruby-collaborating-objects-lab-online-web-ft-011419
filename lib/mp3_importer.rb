require "pry"
class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.glob(path) { |file| file.gsub(/[.mp3]/, '') }
    binding.pry
  end
  
  def import
    #Song.new_by_filename()
  end
  
end