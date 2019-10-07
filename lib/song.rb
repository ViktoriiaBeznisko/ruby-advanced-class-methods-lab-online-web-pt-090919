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
    result = self.all.detect {|s|s.name == name}
    if result == nil
      self.create_by_name(name)
      #song = self.new 
      #song.name = name
      #song.save 
      #song
    else
      result
    end
  end

  def self.alphabetical
    self.all.sort_by { |s| s.name } 
  end
  
  def self.new_from_filename(mp3_file)
    constructor = self.new
    constructor.name = mp3_file.split(/ [^a-zA-Z\s]|\s-\s/)[1]
    constructor.artist_name = mp3_file.split(/ [^a-zA-Z\s]|\s-\s/)[0]
    constructor.save
    constructor
  end
 

  def self.destroy_all
    self.all.clear
  end
end
