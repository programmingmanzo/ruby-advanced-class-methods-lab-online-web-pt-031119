class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def initialize(name, artist)
    @name = name 
    @artist = artist 
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
    binding.pry 
  end
  
  
  def self.create
    
  end

end
