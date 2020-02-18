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
  
  Failure/Error: expect(new_instance.name).to eq('Black or White')

     NoMethodError:
       undefined method `name' for "Michael Jackson":String
     # ./spec/song_spec.rb:44:in `block (3 levels) in <top (required)>'

  2) Song .new_by_filename associates new song instance with the artist from the filename
     Failure/Error: expect(new_instance.artist.name).to eq('Michael Jackson')

     NoMethodError:
       undefined method `artist' for "Michael Jackson":String
     # ./spec/song_spec.rb:52:in `block (3 levels) in <top (required)>'

  
  def print_songs
    a = self.songs
    a.each do |x|
      puts x.name
    end
  end
end
    
    
    
