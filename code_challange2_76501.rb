ABSOLUTES = [4, 7, 12]
SIGNS = [true, false, true]

def solution(absolutes, signs)
    answer = 0
    absolutes.map.with_index{|v, i| answer += ((signs[i] ? 1 : -1) * v)}

    return answer
end

solution(ABSOLUTES, SIGNS)