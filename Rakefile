require_relative 'lib/artist'
require_relative 'lib/song'
require_relative 'lib/mp3_importer.rb'
require 'pry'
require 'rake'

def reload!
	load 'lib/artist.rb'
	load 'lib/song.rb'
	load 'lib.mp3_importer.rb'
end

task :console  do
	Pry.start
end