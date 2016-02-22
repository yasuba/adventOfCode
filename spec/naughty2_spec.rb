require "naughty2"

describe Naughty2 do
	
	it "knows nice strings has pairs of letters appearing twice like xyxy" do
		expect(subject.pair_appears_twice?("xyxy")).to eq true
	end

	it "knows nice strings has pairs of letters appearing twice like aabcdefgaa" do
		expect(subject.pair_appears_twice?("aaacdefgaa")).to eq true
	end

	it "knows naughty strings have overlapping pairs of letters like aaa" do
		expect(subject.pair_appears_twice?("aaa")).to eq false
	end
	
	it "contains a letter which repeats with another letter between it like xyx" do
		expect(subject.spit_roast?("xyx")).to eq true
	end

	it "knows qjhvhtzxzqqjkmpb is nice" do
		expect(subject.check_if_nice("nhnjuyiuyfgdhskw")).to eq true
	end

	it "knows uurcxstgmygtbstg is naughty" do
		expect(subject.check_if_nice("mklopijuhygtfrdc")).to eq false
	end
	
end