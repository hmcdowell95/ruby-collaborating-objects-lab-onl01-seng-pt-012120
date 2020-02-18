require 'pry'
class Song 
  attr_accessor :name, :artist 
  
  def initialize(name)
    @name = name 
    save
  end
  
  def save
    @@all << self
  end
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(name)
    a = name.split(" - ")
    z = a[1]
    y = a[0]
    b = Song.new(z)
    b.artist_name=(y)
  end
  
  def artist_name=(x)
    a = Artist.find_or_create_by_name(x)
    self.artist = a
    a
  end
end
    
    