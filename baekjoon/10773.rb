count, numbers, answer = gets.chomp, [], []
count.to_i.times{numbers << gets.chomp.to_i}

numbers.map{|v| (v == 0) ? answer.pop() : answer.push(v)}
puts answer.sum