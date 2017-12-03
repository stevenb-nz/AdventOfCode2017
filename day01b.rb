def day01(input)

  offset = input.length / 2
  input = input + input
  output = 0
  for i in 0..input.length / 2 - 1
    output += input[i].to_i if input[i] == input[i+offset]
  end
  return output
end

input = File.read("day01_input.txt").chomp
puts day01(input)
