class Artist

	@@all = []

	attr_accessor :name

	def initialize(name)
		@name = name
		@songs = []
	end

	def add_song(song)
		@songs << song
		song.artist = self
	end

	def songs
		@songs
	end

	def self.all
		@@all.uniq
	end

	def save
		@@all << self
	end

	def self.find_or_create_by_name(name)
		if self.all.detect {|x| x.name == name} == nil
			artist = Artist.new(name)
			artist
		else
			self.all.detect {|x| x.name == name}
		end
	end

	def print_songs
		@songs.each {|s| puts s.name}
	end

end