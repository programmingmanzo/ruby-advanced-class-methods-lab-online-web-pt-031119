class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def initialize(name, artist_name)
    @name = name 
    @artist_name = artist_name 
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  binding.pry 
  
  def self.create
    
  end
  
  def self.destroy_all 
    self.class.all.clear 
  end 

end
