class Artist 
  attr_accessor :name 
  
  def initialize(name)
    @name = name
    save
  end
  
  @@all = []
  
  def save
    if @@all.include?(self)
    else 
      @@all << self
    end
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end
  
  def self.find_or_create_by_name(x)
    ec = @@all.find {|artist| 

  
  def print_songs
    a = self.songs
    a.each do |x|
      puts x.name
    end
  end
end
    
    
    
