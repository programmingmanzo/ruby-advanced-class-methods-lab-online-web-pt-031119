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
    @@all << new_song #puts all new_songs in the class variable 
    new_song #returns the new_song 
    #binding.pry 
  end
  
  def self.new_by_name(name) #This method has a property of name. 
    new_song = self.new
    new_song.name = name 
    new_song
    #binding.pry 
  end 
  
  def self.create_by_name(name)
    song = self.new 
    song.name = name
    @@all << song 
    song
    #binding.pry 
  end 
  
  def self.find_by_name(name)
    @@all.each.find do |song| #iterates through the class variable and returns false if the song name isnt present
      song.name == name
      #binding.pry 
    end
  end
  
  def self.find_or_create_by_name(name)
    if self.find_by_name(name) == nil || @@all.include?(name) == true 
      self.create_by_name(name)
      #binding.pry 
    else 
      self.find_by_name(name)
    end 
  end
  
  def self.alphabetical
    self.all.sort_by{ |x| x.name }
      #binding.pry 
  end
  
  
  
  
    
  
  def self.destroy_all 
  end 

end
