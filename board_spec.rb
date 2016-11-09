require('minitest/autorun')
require('minitest/rg')
require('pry-byebug')
require_relative("board")
require_relative("jumps")

class TestBoard < Minitest::Test

  def setup
    @board_1 = Board.new()
    @snake_1 = Jump.new(26, 12)
    @ladder_1 = Jump.new(5, 17)
  end

def test_board_squares
  assert_equal(64, @board_1.squares)
end



def test_jumps_can_exist
@board_1.add_jump(@snake_1)
@board_1.add_jump(@ladder_1)
assert_equal(2, @board_1.jumps.count)
end

end