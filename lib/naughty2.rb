class Naughty2

	def pair_appears_twice?(string)
		pairs = string.chars.each_with_index.map{|c,i| [c, string.chars[i+1]]}
		p pairs.each_with_index {|p,i| pairs.delete(p) if p == pairs[i+1]}
	end

	def spit_roast?(string)
		string.each_char.with_index.any?{|char, i| char == string[i+2]}
	end

	def check_if_nice(string)
		pair_appears_twice?(string) && spit_roast?(string)
	end

	def check_all_the_strings(file)
		File.readlines(File.dirname(__FILE__) + file).select{|line| check_if_nice(line.chomp)}.length	
	end	

end
