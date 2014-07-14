require_relative '../poi.rb'


class Histogram

	def initialize
	end


	def for(pois)
		
		if pois == []
			return {}
		end
		poi=pois[0]
		hist=Hash.new #={rating=>cuantos}
		hist[poi.rating]=1
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
end