class POI

	# require 'test/unit'

	@@pointOfInterest = Array.new
	attr_accessor :name, :location, :rating

	def initialize(name, location, rating)
		@name=name
		@location=location
		@rating=rating
		@@pointOfInterest.push(self)
	end

	def self.printPointOfInterest
		for e in @@pointOfInterest
			print "- "+e.printInfo
		end
	end

	def self.print_list(arr)
		for e in arr
			print "- "+e.printInfo
		end
	end

	def self.sort_list(arr)
		arr.sort_by { |e| e.rating }.reverse
	end



	def self.get_array
		@@pointOfInterest
	end

	def printInfo
		 "This is #{@name} in #{@location} with rating #{@rating}\n"
	end

	def self.clean
		@@pointOfInterest.clear
	end	

	def self.test
		point=POI.new("gaudi", "barcelona", 4)

		puts point.name == "gaudi"
		puts point.location == "barcelona"
		puts point.rating == 4

		point_two=POI.new("Sagrada Familia", "barcelona", 3)	

		puts @@pointOfInterest.length == 2

	end

end



# point_two=POI.new("Sagrada Familia", "barcelona", 3)
# point=POI.new("gaudi", "barcelona", 4)
# point_three=POI.new("museo", "barcelona", 2)

# arr = POI.get_array.sort_by { |e| e.rating }.reverse
# POI.print_list(arr)
# POI.print_list(POI.sort_list(arr))
