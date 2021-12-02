PRICES = [1, 2, 3, 2, 3]

def solution(prices)
  prices.map.with_index do |price, i|
    prices[i..-1].find_index { |p| price > p } || prices.count - i - 1
  end
end

solution(PRICES)