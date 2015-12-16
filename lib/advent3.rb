class Advent3

	def initialize
		reset_positions		
	end

	def reset_positions
		@positions = [[0,0]]
	end


	def check_direction(string)
		string.chars.map do |arrow|
			x_axis(&:+) if arrow == "\^"
			x_axis(&:-) if arrow == "v"
			y_axis(&:+) if arrow == ">"
			y_axis(&:-) if arrow == "<"
		end
		@positions
	end

	def x_axis
		@positions << [(yield @positions.last.first, 1), @positions.last.last]
	end

	def y_axis
		@positions << [@positions.last.first, (yield @positions.last.last, 1)]
	end

	def count_houses(string)
		check_direction(string)
		@positions.uniq.length
	end

	def santas_instructions(file)
		text = File.readlines(File.dirname(__FILE__) + file)
		check_direction(text.first)
	end

	def split_instructions(string)
		string.chars.partition.each_with_index{ |el, i| i.even? }
	end

	def robo_delivery(string)	
		santas_houses = check_direction(split_instructions(string).first.join(""))
		reset_positions
		robos_houses = check_direction(split_instructions(string).last.join(""))
		(santas_houses + robos_houses).uniq.length
	end

	def next_year(file)
		text = File.readlines(File.dirname(__FILE__) + file)
		robo_delivery(text.first)
	end

end
