# 1
inputs, answer = [], []
gets.chomp.to_i.times { inputs << gets.chomp.strip() }

inputs.each do |input|
  stack = []

  input.length.times do |index|
    if stack.last.eql?("(") 
      input[index].eql?(")") ? stack.pop : stack.push(input[index])
    else 
      stack.push(input[index])
    end 
  end

  answer << ((stack.empty?) ? "YES" : "NO")
end

puts answer

# 2
def validate_parentheses(input)
    items = []

    input.each_char do |item|
        last = items.last

        if last == '(' && item != last
            items.pop
            next
        end

        items.push item
    end
    return items.length == 0
end

count = Integer(gets.chomp)

count.times do
    puts validate_parentheses(gets.chomp) ? "YES" : "NO"
end