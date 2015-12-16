require "advent3"

describe Advent3 do 

	context "first year, just Santa" do

		it "knows that ^ is one place north" do
			expect(subject.count_houses("^")).to eq 2
		end

		it "knows that v is one south" do
			expect(subject.count_houses("v")).to eq 2
		end

		it "knows that ^v goes back to the start" do
			expect(subject.count_houses("^v")).to eq 2
		end

		it "knows that ^v^v^v^v^v gives presents to 2 houses" do
			expect(subject.count_houses("^v^v^v^v^v")).to eq 2
		end

		it "knows ^^^>>>vvv<<< is 12" do
			expect(subject.count_houses("^^^>>>vvv<<<")).to eq 12
		end

		it "know that ^>v< gives presents to 4 houses" do
			expect(subject.count_houses("^>v<")).to eq 4
		end

	end

	context "next year with Robo Santa" do

		it "knows that ^v delivers to 3 houses" do
			expect(subject.robo_delivery("^v")).to eq 3
		end

		it "know that ^>v< delivers to 3 houses" do
			expect(subject.robo_delivery("^>v<")).to eq 3
		end

		it "know that ^v^v^v^v^v delivers to 11 houses" do
			expect(subject.robo_delivery("^v^v^v^v^v")).to eq 11
		end

		it "know that ^^^>>>vvv<<< delivers to 8 houses" do
			expect(subject.robo_delivery("^^^>>>vvv<<<")).to eq 8
		end

	end


	
end

