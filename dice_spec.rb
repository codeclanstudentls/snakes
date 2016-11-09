require('minitest/autorun')
require('minitest/rg')
require_relative('dice')

class TestDice < Minitest::Test

def setup
  @dice = Dice.new()
end


# def test_roll_dice
#   assert_equal(6, @dice.roll_dice)
# end

end