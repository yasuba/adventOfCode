require 'advent2'

describe Advent2 do 

	it "should take dimensions and return surface area" do
		expect(subject.area([2, 3, 4])).to eq [12, 24, 16]
	end

	it "should calculate the total surface area" do
		expect(subject.total_area([12, 24, 16])).to eq 52
	end

	it "should add the square of the smallest side to the area" do
		expect(subject.wrapping("2x3x4")).to eq 58
	end

	it "should calculate the perimeter of the smallest side of a present" do
		expect(subject.perimeter("2x3x4\n")).to eq 10
	end

	it "should calculate the length of the bow" do
		expect(subject.bow_length("2x3x4\n")).to eq 24
	end

	
end