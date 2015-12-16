class Advent2

	def area(dimensions)
		[2 * dimensions[0] * dimensions[1], 2 * dimensions[1] * dimensions[2], 2 * dimensions[2] * dimensions[0]]
	end

	def total_area(areas)
		areas.inject(:+)
	end

	def dimensions(measurements)
		measurements.gsub('\n', '').split('x').map{|num| num.to_i}
	end

	def wrapping(measurements)
		smallest_area = area(dimensions(measurements)).min / 2
		total_area(area(dimensions(measurements))) + smallest_area
	end

	def paper_needed(file)
		text = File.readlines(File.dirname(__FILE__) + file)
		text.map{|measurement| wrapping(measurement)}.inject(:+)
	end

	def perimeter(measurements)
		dimensions(measurements).sort[0,2].inject{|sum, d| (d + sum)*2}
	end

	def bow_length(measurements)
		dimensions(measurements).inject(:*)
	end

	def total_ribbon(measurements)
		perimeter(measurements) + bow_length(measurements)
	end

	def ribbon_needed(file)
		text = File.readlines(File.dirname(__FILE__) + file)
		all_ribbon = text.map{|measurement| total_ribbon(measurement)}
		all_ribbon.inject(:+)
	end

end


# "2x3x4\n"