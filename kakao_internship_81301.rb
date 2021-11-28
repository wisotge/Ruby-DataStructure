STR = "2three45sixseven"

STR_TO_NUM_DICTIONARY = { "zero": "0", "one": "1", "two": "2", "three": "3", 
                          "four": "4", "five": "5", "six": "6", "seven": "7", 
                          "eight": "8", "nine": "9" }

def solution(str)
  answer, temp_str = "", ""

  parsed_str = []
  str.split("").map{|char| parsed_str << char}

  parsed_str.each do |char|
    if STR_TO_NUM_DICTIONARY.has_value?(char)
      answer += char      
    else 
      temp_str += char
      
      if STR_TO_NUM_DICTIONARY.has_key?(temp_str.to_sym)
        answer += STR_TO_NUM_DICTIONARY[temp_str.to_sym]
        temp_str = ""
      end
    end 
  end

  return answer.to_s
end

solution(STR)

