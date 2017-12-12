def day09(input)
  return count_garbage(input)
end

def count_garbage(input)
  mode = "clean"
  ignore = false
  clean = ""
  gc = 0
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
        else
          gc += 1
        end
      else
        ignore = false
      end
    end
  end
  return gc
end

input = File.read("day09_input.txt").chomp
puts day09(input)
