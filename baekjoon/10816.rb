length = gets
line = gets

def solution length, line
  answer = {}
  
  line.strip().split("").map{|v| answer.has_key?(v) ? answer[v] += 1 : answer[v] = 1}
  key, value = answer.sort_by {|k, v| -v}.first

  puts (value == 1) ? 0 : value
end

solution(length, line)