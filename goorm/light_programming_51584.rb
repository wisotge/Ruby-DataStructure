input = []

while value = gets 
	input << value
end

def solution input
	result = parse_input(input)
	do_programming(result[:lamp_array], result[:p_array])
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
# do programming
end 

solution(input)