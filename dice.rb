class Dice
attr_reader :current_value

  def initialize
    @max = 6
    @current_value = 0
  end

def roll_dice
  return rand(1..@max)
end

end