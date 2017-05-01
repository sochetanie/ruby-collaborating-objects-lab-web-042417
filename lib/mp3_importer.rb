class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).select{|file| file.include?('.mp3')} 
  end

  def import
    files.each {|name| Song.new_by_filename(name)}
  end

end