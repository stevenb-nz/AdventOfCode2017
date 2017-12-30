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
100.times do
  particles.each do |particle|
    puts particle[0].abs + particle[1].abs + particle[2].abs
  end
end
return
end

# input = File.read("day20_input.txt").chomp
# puts day20(input)
