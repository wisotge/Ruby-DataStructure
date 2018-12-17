A, B = gets.chomp.split(" ").map(&:to_i)

answer = if A < B  then "<"
        elsif A > B then ">"
        else "==" end

puts answer