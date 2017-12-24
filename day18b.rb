def day18(input)
  lines = input.split("\n")
  p = []
  p.push Prog.new(0,lines,p)
  p.push Prog.new(1,lines,p)
  begin
    p.sample.exec
  end until p[0].status == 'waiting' and p[1].status == 'waiting'
  return p[1].sent_count
end

class Prog
  def initialize(id,lines,p)
    @id = id
    @lines = lines
    @p = p
    @next_line = 0
    @registers = Hash.new
    @registers['p'] = id
    @sent_queue = []
    @sent_count = 0
    @status = 'running'
  end
  def sent_queue
    @sent_queue
  end
  def sent_count
    @sent_count
  end
  def status
    @status
  end
  def exec
    this_line = @lines[@next_line].split(' ')
    val1 = get_val(this_line[1])
    if ('a'..'z').include?(this_line[1]) then
      reg = this_line[1]
    end
    if this_line.size > 2 then
      val2 = get_val(this_line[2])
    end
    case this_line[0]
    when "snd"
      @sent_queue.push val1
      @sent_count += 1
      @next_line += 1
    when "set"
      @registers[reg] = val2
      @next_line += 1
    when "add"
      @registers[reg] += val2
      @next_line += 1
    when "mul"
      @registers[reg] *= val2
      @next_line += 1
    when "mod"
      @registers[reg] %= val2
      @next_line += 1
    when "rcv"
      if @p[1-@id].sent_queue.empty? then
        @status = 'waiting'
      else
        @registers[reg] = @p[1-@id].sent_queue.shift
        @next_line += 1
      end
    when "jgz"
      if val1 > 0 then
        @next_line += val2
      else
        @next_line += 1
      end
    end
  end
  def get_val(s)
    if ('a'..'z').include?(s) then
      if !@registers.has_key?(s) then
        @registers[s] = 0
      end
      return @registers[s]
    else
      return s.to_i
    end
  end
end

input = File.read("day18_input.txt").chomp
puts day18(input)
