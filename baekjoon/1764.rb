# input = gets
# input = input.split(" ")
# d_times, b_times = input.first.to_i, input.last.to_i
# answer = {}

# d_times.times do 
#   value = gets.chomp() 
# 	answer.has_key?(value) ? answer[value] += 1 : answer[value] = 1
# end

# b_times.times do 
#   value = gets.chomp() 
# 	answer.has_key?(value) ? answer[value] += 1 : answer[value] = 1
# end

# answer = answer.select{|k, v| k if v > 1}

# puts answer.size
# answer.map{|k, v| puts k}

# print는 일렬, puts는 다음줄


# 1
a=$<.take(gets.to_i)&[*$<]
puts a.size,a.sort


#2
# Fast lookup times (with include?)
# Unique values
require 'set'

listened = Set.new
seen = Set.new
res = []
n, m = gets.chomp.split

for i in 1..n.to_i
    val = gets
    listened.add(val)
end

for i in 1..m.to_i
    val = gets
    if listened.include?(val)
        res.push(val)
    end
end

res.sort!
puts res.size
res.each do |val|
    puts val
end