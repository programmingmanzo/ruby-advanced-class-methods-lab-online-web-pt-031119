require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    new_song = self.new #When a new song is instantiated it sets it equal to new_song. Then we just return new_song. 
    new_song 
    binding.pry 
  end
  
  def self.new_by_name(name) #This method has a property of name. 
    new_song = self.new
    new_song.name = name 
    new_song
    #binding.pry 
  end 
  
  def self.destroy_all 
  end 

end
