input = gets.chomp.split

answer = {}
input.map{|v| answer.has_key?(v) ? answer[v] += 1 : answer[v] = 1}

result = 0
answer.map{|k, v| (v > 1) ? result += v : result += 1}
puts result