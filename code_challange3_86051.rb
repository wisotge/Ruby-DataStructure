NUMBERS = [1,2,3,4,6,7,8,0]

def solution numbers
  answer = 0
  (1..9).to_a.map{|num| answer += num unless numbers.include?(num)}

  return answer
end

solution(NUMBERS)