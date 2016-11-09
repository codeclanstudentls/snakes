class Person
  attr_accessor :name, :colour, :position

  def initialize(name,colour)
    @name = name
    @colour = colour
    @position = 1
  end

  def move_player(number, board)
    if @position + number <= board.squares 
      @position += number
    end

  end

end