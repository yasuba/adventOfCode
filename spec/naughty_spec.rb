require 'naughty'

describe Naughty do

	it "should know that at least three vowels make it nice" do
		expect(subject.has_three_vowels?("aei")).to eq true
	end

	it "should know that fewer than three vowels is naughty" do
		expect(subject.has_three_vowels?("aefsdrwf")).to eq false
	end

	it "knows that having a double letter makes it nice" do
		expect(subject.has_double_letter?("dd")).to eq true
	end

	it "knows that no doubles letters are naughty" do
		expect(subject.has_double_letter?("asdfghjkeuryt")).to eq false
	end

	it "knows that ab, cd, pq, or xy are naughty" do
		expect(subject.no_naughty_letters?("ab")).to eq false
	end

	it "knows that ugknbfddgicrmopn is nice because it fits all the rules" do
		expect(subject.is_nice?("ugknbfddgicrmopn")).to eq true
	end

	it "knows jchzalrnumimnmhp is naughty" do
		expect(subject.is_nice?("jchzalrnumimnmhp")).to eq false
	end

	it "knows aaa is nice" do
		expect(subject.is_nice?("aaa")).to eq true
	end

	it "find out who's naughty or nice" do
		expect(subject.count_the_nice("/../list.txt")).to eq 236
	end
	
end
