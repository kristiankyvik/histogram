require_relative '../poi.rb'


class Histogram

	def initialize
	end


	def for(pois)

		if pois == []
			return {}
		end

		hist=Hash.new 
		for point in pois
			if (hist[point.rating] == nil)
				hist[point.rating] = 1
			
			else
				hist[point.rating] = (hist[point.rating] + 1)
			end
		end
		hist
	end
end




describe "Histograms" do
	it "is empty histogram" do
		expect(Histogram.new.for([])).to eq({})
	end	

	it "If only one" do
		p1=POI.new("sagrada", "muntaner", 5)
		expect(Histogram.new.for([p1])).to eq({5=>1})
	end

	it "exactly two" do
		p1=POI.new("sagrada", "muntaner", 5)
		p2=POI.new("torre", "catalonia", 4)
		expect(Histogram.new.for([p1,p2])).to eq({4=>1, 5=>1})
	end

	it "if more than two" do
		p1=POI.new("sagrada", "muntaner", 5)
		p2=POI.new("torre", "catalonia", 4)
		p3=POI.new("jamon", "serrano", 5)
		p4=POI.new("torre jimenz", "bilbao", 1)
		expect(Histogram.new.for([p1,p2,p3,p4])).to eq({1=>1, 4=>1, 5=>2})
	end

end