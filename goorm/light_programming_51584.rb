input = []

while value = gets 
	input << value
end

def solution input
	result = parse_input(input)
	lamp_square = do_programming(result[:lamp_square], result[:p_array])
	print_answer(lamp_square)
end

def parse_input input
	size = input.shift.split(" ")	
	column, row = size[0].to_i, size[1].to_i
	
	lamp_square = []
	column.times{lamp_square << input.shift.split(" ")}
	
	p = input.shift.split(" ")[0].to_i
	
	p_array = []
	p.times{p_array << input.shift.split(" ") unless input.nil?}
	
	return {lamp_square: lamp_square, p_array: p_array}
end

def make_opposite lamp
	return lamp.eql?("0") ? "1" : "0"
end

def do_programming lamp_square, p_array
	p_array.each do |p_info|
		direction = p_info[0].eql?("0") ? "vertical" : "horizontal"
		target_i = p_info[1].to_i - 1
		
		if direction.eql?("vertical")
			lamp_line = lamp_square[target_i]
			lamp_line.map.with_index{|lamp, i| lamp_line[i] = make_opposite(lamp)}
		elsif direction.eql?("horizontal")
			lamp_square.map{|lamp_line| lamp_line[target_i] = make_opposite(lamp_line[target_i])}
		end 
		
		puts lamp_square.to_s
	end
	
	return lamp_square
end 

def print_answer lamp_square
	result_msg = ""
	lamp_square.each do |lamp_line|
		lamp_line.map{|lamp| result_msg += "#{lamp} "}
		result_msg += "\n"
	end
	
	print result_msg
end

solution(input)