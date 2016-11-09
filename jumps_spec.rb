require('minitest/autorun')
require('minitest/rg')
require_relative("jumps")

class TestJump < Minitest::Test

def setup
  @snake_1 = Jump.new(40, 31)
  @ladder_1 = Jump.new(5, 20)
end

def test_jump_snake
  assert_equal(31, @snake_1.finish)
end
end