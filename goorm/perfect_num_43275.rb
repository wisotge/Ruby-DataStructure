puts "두개의 정수를 입력하여 주세요..."
input = gets

def solution input
	perfect_nums, result_msg = [], ""
	parsed_input = input.split(" ").map{|v| v.to_i}
	
	(parsed_input[0]..parsed_input[1]).each do |candidate_num|
		sum = 0
		
		(1...candidate_num).each do |num|
			break if sum > candidate_num
			sum += num if (candidate_num % num) == 0
		end
		
		perfect_nums << candidate_num if candidate_num == sum
	end
	
	perfect_nums.map{|v| result_msg += "#{v} "}
	puts result_msg
end

solution(input)