require 'byebug'

LOTTOS = [44, 1, 0, 0, 31, 25]
WIN_NUMS = [31, 10, 45, 1, 6, 19]

def solution(lottos, win_nums)
  available_count = 0
  candidate_lottos = []

  win_nums_hash = Hash.new
  win_nums.map{|num| win_nums_hash[num] = 1}
  
  lottos.map{|lotto| (lotto == 0) ? available_count += 1 : candidate_lottos << lotto}
  matched_count = cal_matches_count(win_nums_hash, candidate_lottos)

  return [cal_rank("MAX", matched_count, available_count), cal_rank("MIN", matched_count, available_count)]
end

def cal_matches_count win_nums_hash, candidate_lottos
  count = 0 
  candidate_lottos.map{|num| count += 1 if win_nums_hash.has_key?(num)}

  return count
end 

def cal_rank rank_type, matched_count, available_count
  total_count = rank_type.eql?("MAX") ? matched_count + available_count : matched_count
  
  rank = 7 - total_count
  rank = (rank > 6) ? 6 : rank
  
  return rank
end

solution(LOTTOS, WIN_NUMS)