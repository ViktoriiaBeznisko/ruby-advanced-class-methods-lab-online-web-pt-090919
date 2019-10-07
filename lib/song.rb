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
    self.all << song
    song
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

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
#    result = self.all.detect {|s|s.name == name}
#    if result == nil
#      self.create_by_name(name)
#    else
#      result
#    end
  end

  def self.alphabetical
    self.all.sort_by { |s| s.name } 
  end
  
  def self.new_from_filename(mp3_file)
    row = mp3_file
    
    data = row.split(" - ")
    artist_name = data[0]
    song_name = data[1].chomp(".mp3")

    song = self.new
    song.name = song_name
    song.artist_name = song_artist_name
    song
  end
 

  def self.destroy_all
    self.all.clear
  end
end
