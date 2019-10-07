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
 #   @Song.all = song
 #   @Song.all << self
 # end


  def self.destroy_all
    self.all.clear
  end
end
