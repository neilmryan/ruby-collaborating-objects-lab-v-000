class MP3Importer

	attr_accessor :path

	def initialize(path)
		@path = path
	end

	def files
		files_array = []
		files = Dir.open @path
		files.each do |file|
			if file.include?(".mp3")
				files_array << file
			end
		end
		files_array
	end

	def import
		files.each do |file|
			Song.new_by_filename(file)
		end
	end

end