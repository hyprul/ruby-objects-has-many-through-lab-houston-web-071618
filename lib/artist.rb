# class Artist
# 	@@all = []
# 	attr_accessor :name 

	
# 	def initialize(name)
# 		@name = name
# 		@@all << self
# 	end


# 	def self.all
# 		@@all
# 	end

# 	def new_song(name, genre)
# 		song = Song.new(name, self, genre)
# 		#song.artist = self
# 	end



# 	def songs
# 		Song.all.select { |song| song.artist == @name}
# 	end



# end


class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    songs.map { |song| song.genre  }
  end
end