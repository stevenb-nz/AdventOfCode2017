def day09(input)
  clean_input = remove_garbage_from(input)
  return score(clean_input)
end

def remove_garbage_from(input)
  mode = "clean"
  ignore = false
  clean = ""
  input.each_char do |char|
    if mode == "clean" then
      if char == '<' then
        mode = "garbage"
      else
        clean += char
      end
    else
      if !ignore then
        case char
        when '!'
          ignore = true
        when '>'
          mode = "clean"
        end
      else
        ignore = false
      end
    end
  end
  return clean
end

def score(input)
  score = 0
  level = 0
  input.each_char do |char|
    case char
    when '{'
      level += 1
    when '}'
      score += level
      level -= 1
    end
  end
  return score
end

input = File.read("day09_input.txt").chomp
puts day09(input)
