require 'pry'
class storage
	def self.dump(file)
		bind pry
		output=File.open("file",w)
   		sample=output.write("hello world")
        return sample
    end
    def self.delete(file)
    	file.delete(file)
    end

end
