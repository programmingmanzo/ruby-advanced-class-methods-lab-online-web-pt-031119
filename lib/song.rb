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
    new_song = self.new #When a new song is intantiated it sets it equal to new_song. Then we just return new_song. 
    new_song 
  end
  
  def self.new_by_name(name) #This 
    
  
  def self.destroy_all 
    self.class.all.clear 
  end 

end
