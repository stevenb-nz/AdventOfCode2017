def day20(input)
lines = input.split("\n")
values = []
lines.each do |line|
  line.delete!("p")
  line.delete!("v")
  line.delete!("a")
  line.delete!("=")
  line.delete!("<")
  line.delete!(">")
  value = line.split(',').map(&:to_i)
  values.push value[6].abs+value[7].abs+value[8].abs
end
return values.index(values.min)
end

input = File.read("day20_input.txt").chomp
puts day20(input)
