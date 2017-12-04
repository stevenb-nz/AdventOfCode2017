def day02(input)

  array = input.split("\n")
  check = 0
  array.each do |line|
    line_array = line.split(' ')
    check += line_array.max_by {|x| x.to_i}.to_i - line_array.min_by {|x| x.to_i}.to_i
  end
  return check
end

input = File.read("day02_input.txt").chomp
puts day02(input)
