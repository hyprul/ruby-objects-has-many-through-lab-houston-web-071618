# class Genre
# 	@@all = []
# 	attr_accessor :name
	


# 	def initialize(name)
# 		@name = name
# 		#@@all << this
# 	end

# 	def self.all
# 		@@all
# 	end


# end

class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def songs
    Song.all{|song| song.genre == self}
  end

  def artists
    songs.map{|song| song.artist}
  end

  def new_song(song)
    self.songs << song
  end

  def self.all
    @@all
  end


end