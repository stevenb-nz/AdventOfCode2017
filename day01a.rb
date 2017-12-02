def day01(input)

  input = input + input[0]
  output = 0
  for i in 0..input.length-2
    output += input[i].to_i if input[i] == input[i+1]
  end
  return output
end

input = File.read("day01_input.txt")
puts day01(input.chomp)
