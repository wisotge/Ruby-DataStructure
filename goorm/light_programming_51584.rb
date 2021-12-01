puts "값을 입력하여 주세요..."
input = []

while value = gets 
	input << value
end

def solution input
	result = parse_input(input)
	lamp_array = do_programming(result[:lamp_array], result[:p_array])
	print_answer(lamp_array)
end

def parse_input input
	# 전등 배열 크기 계산
	size = input.shift.split(" ")	
	height, width = size[0].to_i, size[1].to_i
	
	# 전등 배열 생성
	lamp_array = []
	height.times do
		lamp_array << input.shift.split(" ")
	end
	
	# 프로그래밍 하는 수 계산
	p = input.shift.split(" ")[0].to_i
	
	# 프로그래밍 하는 줄 정보 생성
	p_array = []
	p.times do
		p_array << input.shift.split(" ")
	end
	
	return {lamp_array: lamp_array, p_array: p_array}
end

def do_programming lamp_array, p_array
	p_array.each do |p_info|
		direction = p_info[0].eql?("0") ? "row" : "column"
		target_i = p_info[1].to_i
		
		if direction.eql?("row")
			lamp_array[target_i - 1].each_with_index do |lamp, i|
				lamp_array[target_i - 1][i] = (lamp == "0") ? "1" : "0"
			end
		elsif direction.eql?("column") 
			lamp_array.each do |lamp|
				lamp[target_i - 1] = (lamp[target_i - 1] == "0") ? "1" : "0"
			end 
		end 
	end
	
	return lamp_array
end 

def print_answer lamp_array
	result_msg = ""
	lamp_array.each do |lamp|
		lamp.map{|v| result_msg += "#{v} "}
		result_msg += "\n"
	end
	
	print result_msg
end

solution(input)