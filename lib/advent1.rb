text = File.readlines(File.dirname(__FILE__) + '/instructions.txt').each do |line|
  contents = "#{line}"
  up_floor = contents.count "("
  down_floor = contents.count ")"
  floor_number = up_floor + -down_floor
 
  floors = []
  contents.chars.each do |char|
  	char == "(" ? floors << 1 : floors << -1
  end

  counter = 0
  floors.inject(0) do |sum, x|
  	counter +=1
    floor = sum + x
    if floor == -1
    	p counter
    else
    	floor
    end
  end
end
