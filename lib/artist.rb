require 'pry'
class Artist
  
  attr_accessor :name, :songs

  @@all = []

    def initialize(name)
      @name = name
      @songs = []
    end

    def add_song(song)
      self.songs << song
    end

    def self.all
      @@all
    end

    def save
      self.class.all << self
    end
    
    def self.find_or_create_by_name(name)
      if artist = self.all.find {|x| x.name == name} 
        artist 
      else        
        artist = self.new(name)
        artist.save
        artist
      end
    end

    def print_songs
      self.songs.each {|x| puts x.name}
    end

end 