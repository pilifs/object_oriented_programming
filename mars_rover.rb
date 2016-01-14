class Rover

  def initialize(x, y, facing)
    @x = x
    @y = y
    @heading = facing
  end


  def read_instructions(instruction)
    instruction_set = instruction.split("")
    instruction_set.each {|x| x == "M" ? move : turn(x)}
    puts "#{@x} #{@y} #{@heading}"
  end

  def move
    case @heading
    when "N" then @y += 1
    when "S" then @y -= 1
    when "E" then @x += 1
    when "W" then @x -= 1
    end
  end

  def turn(direction)
    compass = %w(N E S W)
    @heading = (direction == "R" ? compass[(compass.index(@heading) + 1) % 4] : compass[compass.index(@heading) - 1])
  end

end

def get_plateau
  puts "Please enter plateau X and Y seperated by a space (ie. \"X Y\")"
  instruction_array = gets.chomp.split(" ")
end

def testmethod
  testrover = Rover.new(1,2,"N")
  testrover.read_instructions("LMLMLMLMM")
end

get_plateau

puts "Please enter Rover 1 starting position (X Y H)"
rover1_start = gets.chomp.split(" ")
puts "Please enter Rover 1 movement instructions"
rover1_instructions = gets.chomp
puts "Please enter Rover 2 starting position (X Y H)"
rover2_start = gets.chomp.split(" ")
puts "Please enter Rover 2 movement instructions"
rover2_instructions = gets.chomp

rover1 = Rover.new(rover1_start[0].to_i, rover1_start[1].to_i, rover1_start[2])
rover2 = Rover.new(rover2_start[0].to_i, rover2_start[1].to_i, rover2_start[2])
rover1.read_instructions(rover1_instructions)
rover2.read_instructions(rover2_instructions)
