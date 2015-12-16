class Naughty

	NAUGHTY = ["ab", "cd", "pq", "xy"]

	def has_three_vowels?(string)
		string.chars.map{|l| l =~ /(a|e|i|o|u)/}.compact.length >= 3
	end

	def has_double_letter?(string)
		string.chars.each_with_index.map{|c,i| c == string.chars[i+1]}.include?(true)
	end

	def no_naughty_letters?(string)
		NAUGHTY.all?{|letters| (string =~ /#{letters}/).nil?}
	end 

	def is_nice?(string)
		no_naughty_letters?(string) && has_double_letter?(string) && has_three_vowels?(string)
	end

	def count_the_nice(file)
		File.readlines(File.dirname(__FILE__) + file).map{|line| is_nice?(line.chomp)}.select{|bool| bool}.length
	end

end