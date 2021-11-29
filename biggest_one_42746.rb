NUMBERS = [3, 30, 34, 5, 9]

def solution(numbers)
    return numbers.map{|v| v.to_s}.sort{|a, b| b+a <=> a+b}.join("").to_i.to_s
end

solution(NUMBERS)