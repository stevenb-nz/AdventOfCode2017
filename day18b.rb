def day18(input)
  lines = input.split("\n")
  p[0] = Prog.new
  p[1] = Prog.new
  begin
    p.sample.exec
  end until p[0].status == 'waiting' and p[1].status == 'waiting'
  return 3
end

class Prog
def init(id)
  next_line = 0
  registers = Hash.new
  sounds = []
  recovered_sounds = []
end
def exec
  this_line = lines[next_line].split(' ')
  val1 = get_val(this_line[1],registers)
  if ('a'..'z').include?(this_line[1]) then
    reg = this_line[1]
  end
  if this_line.size > 2 then
    val2 = get_val(this_line[2],registers)
  end
  case this_line[0]
  when "snd"
    sounds.push val1
    next_line += 1
  when "set"
    registers[reg] = val2
    next_line += 1
  when "add"
    registers[reg] += val2
    next_line += 1
  when "mul"
    registers[reg] *= val2
    next_line += 1
  when "mod"
    registers[reg] %= val2
    next_line += 1
  when "rcv"
    if val1 != 0 then
      recovered_sounds.push sounds[-1]
      break
    else
      next_line += 1
    end
  when "jgz"
    if val1 > 0 then
      next_line += val2
    else
      next_line += 1
    end
  else
    print "error"
    break
  end
end
end

def get_val(s,r)
  if ('a'..'z').include?(s) then
    if !r.has_key?(s) then
      r[s] = 0
    end
    return r[s]
  else
    return s.to_i
  end
end

# input = File.read("day18_input.txt").chomp
# puts day18(input)
