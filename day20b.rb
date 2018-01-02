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
begin
  (0...particles.count-1).each do |p1|
    (p1+1..particles.count-1).each do |p2|
      if (particles[p1][0]-particles[p2][0]).abs + (particles[p1][1]-particles[p2][1]).abs + (particles[p1][2]-particles[p2][2]).abs == 0 then
        # collision
      end
    end
  end
  particles.each do |particle|
    # remove if collided
    # otherwise, increment position
  end
  # print particles count
end
return
end

# input = File.read("day20_input.txt").chomp
# puts day20(input)
