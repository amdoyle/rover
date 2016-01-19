class Rover
  attr_accessor = :start_x
                  :start_y
                  :direction

  def initialize (start_x, start_y, direction)
    @start_x = start_x
    @start_y = start_y
    @direction = direction
  end

  def read_instructions(dir, max_x, max_y)
    dir.each do |letter|
      if letter == "R"
        turn_right
      elsif letter == "L"
        turn_left
      elsif letter == "M"
        move
      else
        puts "Sorry, that's an invaild output. Try again."
    end
    end
    if max_x < @start_x || max_y < @start_y
      puts "Mars Rover DOWN!"
    else
      puts "I am at #{@start_x} #{@start_y} #{@direction}"
    end
  end

  def turn_left
    case @direction
    when "N"
        @direction= "W"
      when "S"
        @direction= "E"
      when "E"
        @direction = "N"
      when "W"
         @direction = "S"
       else
         puts "Sorry, that's an invaild output. Try again."
    end
  end
#
  def turn_right
    case @direction
      when "N"
        @direction = "E"
      when "S"
        @direction = "W"
      when "E"
        @direction = "S"
      when "W"
        @direction  = "N"
      else
        puts "Sorry, that's an invaild output. Try again."
    end
  end

  def move
    case @direction
      when "N"
        @start_y = @start_y + 1
      when "S"
        @start_y = @start_y - 1
      when "E"
        @start_x = @start_x + 1
      when "W"
        @start_x = @start_x - 1
      else
      puts "Sorry, that's an invaild output. Try again."
      end
  end

end



puts "How wide is the area you would like to explore (please input two numbers seperated by a space)?"
max_x, max_y = gets.chomp.split(" ")
max_x = max_x.to_i
max_y = max_y.to_i

# puts "Where would you like your rover to start? Please input two coordinate and a direction (N, E, S, W):"
# start_x, start_y, direction = gets.chomp.split(" ")
# start_x = start_x.to_i
# start_y = start_y.to_i
#
#
# puts "Input your rover's movements (use L for left, R for right, and M to move forward one unit):"
# dir = gets.chomp.split("")


puts "Where would you like Mars Rover ONE to start? Please input two coordinate and a direction (N, E, S, W):"
start_x, start_y, direction = gets.chomp.split(" ")
start_x = start_x.to_i
start_y = start_y.to_i
direction = direction.upcase


puts "Input the movements for Mars Rover ONE (use L for left, R for right, and M to move forward one unit):"
dir = gets.chomp.upcase.split("")

rover1 = Rover.new(start_x, start_y, direction)
rover1.read_instructions(dir, max_x, max_y)

puts "Where would you like Mars Rover TWO to start? Please input two coordinate and a direction (N, E, S, W):"
start_x, start_y, direction = gets.chomp.split(" ")
start_x = start_x.to_i
start_y = start_y.to_i

puts "Input the movements for Mars Rover TWO (use L for left, R for right, and M to move forward one unit):"
dir = gets.chomp.upcase.split("")

rover2 = Rover.new(start_x, start_y, direction)
rover2.read_instructions(dir, max_x, max_y)
