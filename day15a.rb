def day15(input)
  input_lines = input.split("\n")
  generator_a = input_lines[0].split(' ')[-1].to_i
  generator_b = input_lines[1].split(' ')[-1].to_i
  count = 0
  40_000_000.times do
    generator_a *= 16807
    generator_b *= 48271
    generator_a %= 2147483647
    generator_b %= 2147483647
    if generator_a % 65536 == generator_b % 65536 then
      count += 1
    end
  end
  return count
end

input = File.read("day15_input.txt").chomp
puts day15(input)
