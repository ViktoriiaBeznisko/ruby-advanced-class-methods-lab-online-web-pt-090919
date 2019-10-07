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
    
    @@all << self.new
   # song = self.new
  #  song.save
   # song
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end
  
  def self.create_by_name(name)
    song = self.new
    song.name = name
    song.save
    song
  end

  def self.find_by_name(name)
    self.all.find{|s| s.name == name}
  end

 # self.find_or_create_by_name
 # end




  def self.destroy_all
    self.all.clear
  end
end
