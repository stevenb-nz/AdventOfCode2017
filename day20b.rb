require 'set'

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
reps = 0
begin
  reps += 1
  count1 = particles.count
  collided = Set.new
  (0...particles.count-1).each do |p1|
    (p1+1..particles.count-1).each do |p2|
      if (particles[p1][0]-particles[p2][0]).abs + (particles[p1][1]-particles[p2][1]).abs + (particles[p1][2]-particles[p2][2]).abs == 0 then
        collided.add p1
        collided.add p2
      end
    end
  end
  temp_particles = []
  particles.each_with_index do |particle,index|
    if !collided.member? index
      particle[5] += particle[8]
      particle[4] += particle[7]
      particle[3] += particle[6]
      particle[2] += particle[5]
      particle[1] += particle[4]
      particle[0] += particle[3]
      temp_particles.push particle
    end
  end
  particles = temp_particles
  if particles.count < count1
    count1 = particles.count
  end
end until reps == 50
return particles.count
end

input = File.read("day20_input.txt").chomp
puts day20(input)
