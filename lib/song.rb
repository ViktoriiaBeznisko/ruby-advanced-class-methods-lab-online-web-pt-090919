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
    song = self.new
    song.save
    song
  end

  def self.new_by_name(name_of_a_song)
    song = self.new
    song.name = name_of_a_song 
    song
  end
  
  def self.create_by_name(name_of_a_song)
    song = self.new
    song.name = name_of_a_song
    song.save
    song
  end

  def self.find_by_name(name)
    self.all.find{
  end

  def self.destroy_all
    self.all.clear
  end
end
