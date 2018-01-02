def day20(input)
lines = input.split("\n")
particles = []
lines.each do |line|
  line.delete!("p")
  line.delete!("v")
  line.delete!("a")
  line.delete!("=")
  line.delete!("<")
  line.delete!(">")
  particle = line.split(',').map(&:to_i)
  particles.push particle
end
  particles.each do |particle|

  end
return
end

# input = File.read("day20_input.txt").chomp
# puts day20(input)
