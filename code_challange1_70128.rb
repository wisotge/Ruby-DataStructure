A = [1, 2, 3, 4]
B = [-3, -1, 0, 2]

def solution(a, b)
  answer = 0
  a.map.with_index{|v, i| answer += (a[i] * b[i])}

  return answer
end

solution(A, B)