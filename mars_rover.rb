class Rover

  def initialize(x, y, facing)
    @x = x
    @y = y
    @facing = facing
  end


  def read_instructions(instruction)
    instruction_set = instruction.split("")
  end

  def move
    case heading
    when "N" then x += 1
    when "S" then x -= 1
    when "E" then x += 1
    when "W" then x -= 1
  end

  def turn(direction)
  end

end
