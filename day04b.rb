require 'set'

def day04(input)
  sum = 0
  array = input.split("\n")
  array.each do |line|
    setline = Set.new
    valid = true
    line_array = line.split(' ')
    line_array.each do |word|
      word = word.chars.sort(&:casecmp).join
      if !setline.add?(word) then
        valid = false
      end
    end
    if valid then
      sum += 1
    end
  end
  return sum
end

input = File.read("day04_input.txt").chomp
puts day04(input)
