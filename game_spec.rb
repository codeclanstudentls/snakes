require('minitest/autorun')
require('minitest/rg')
require('pry-byebug')
require_relative("game")
require_relative('board')
require_relative('person')
require_relative('dice')
require_relative('jumps')

class TestGame < Minitest::Test

  def setup
    @board = Board.new()
    @dice = Dice.new()
    @game = Game.new(@board, @dice)
    @jump = Jump.new(5, 12)
    @person_1 = Person.new('Fred', 'blue')
    @person_2 = Person.new('Emma', 'green')

  end

  def test_add_person()
    @game.add_person(@person_1)
    @game.add_person(@person_2)
    assert_equal(2, @game.get_player_numbers)

  end

  def test_check_if_on_jump
    @game.add_person(@person_1)
    @game.add_person(@person_2)
    @board.add_jump(@jump)
    @person_1.move_player(4,@board)
    assert_equal(7, @game.check_jump(@board, @person_1))
  end

  def test_move_on_jump
    @game.add_person(@person_1)
    @game.add_person(@person_2)
    @board.add_jump(@jump)
    @person_1.move_player(4,@board)
    squares_to_move = @game.check_jump(@board, @person_1)
    @person_1.move_player(squares_to_move,@board)
    assert_equal(12, @person_1.position) 
  end

  def test_check_if_won
    @game.add_person(@person_1)
    @person_1.move_player(63,@board)
    assert_equal(true, @game.check_won(@person_1))
  end

  def test_run_game
   @game.add_person(@person_1)
   @game.run_game() 
   #assert_equal(1, @game.get_player_numbers)
   assert_equal(64, @person_1.position)
  end

end