class Artist 
  
  attr_accessor :name
  
  @@all = []

def initialize(name)
    @name = name 
    @songs = []
    @@all << self
  end 

  def add_song(song)
    song.artist = self
  end

  def self.find_or_create_by_name(artist_name) 
  #    if self.all.find{|artist_obj| artist_obj.name == artist_name}
  #     self.all.find{|artist_obj| artist_obj.name == artist_name}
  #    else
  #     self.new(artist_name) 
  #    end
    self.all.find{|artist_obj| artist_obj.name == artist_name} || Artist.new(artist_name)
    #  if self.find(artist_name)
    #   self.find(artist_name)
    #  else
    #   self.create(artist_name) 
    #  end
     self.find(artist_name)|| self.create(artist_name) 
  end

  def self.find(artist_name)
    self.all.find{|artist_obj| artist_obj.name == artist_name}
  end

  def self.create(artist_name)
    Artist.new(artist_name)
  end

  def print_songs
    
  end
  
end






# class Artist

#   attr_accessor :name, :songs

#   @@all = [] 

#   def initialize(name)
#     @name = name
#     @songs = [] 
#   end
  
#   def self.all
#     @@all
#   end

#   def add_song(song)
#     @songs << song
#   end

#   def self.find_or_create_by_name(name)
#     if self.find(name)
#       self.find(name)
#     else
#       self.create(name)
#     end
#   end


#   def self.find(name)
#     @@all.find do |artist|
#       artist.name == name
#     end
#   end

#   def self.create(name)
#     artist = self.new(name)
#     @@all << artist
#     artist
#   end

#   def save
#     @@all << self
#   end
  
#   def print_songs()
#     puts @songs.collect {|x| x.name}
#   end

# end