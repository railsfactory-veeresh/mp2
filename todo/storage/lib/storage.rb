require 'pry'
class Storage
	def self.dump(file)
		binding.pry
		output=File.open("file",w)
   		sample=output.write("hello world")
           return sample
        end
    def self.delete(file)
    	f1=file.delete(file)
         return f1
    end

end
