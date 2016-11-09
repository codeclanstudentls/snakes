require('minitest/autorun')
require('minitest/rg')
require_relative('person')
require_relative('board')
require_relative('dice')

class TestPerson < Minitest::Test
  
  def setup
    @dice = Dice.new()
    @board_1 = Board.new()
    @person1 = Person.new("Fred", "Red")
  end

  def test_person_name
    assert_equal(@person1.name, "Fred")
  end

  def test_player_move
    dice_output = @dice.roll_dice
    @person1.move_player(dice_output, @board_1)
    
    assert_equal(dice_output + 1,@person1.position)

  end
end