class Game

  def initialize(board, dice)
    @board = board
    @dice = dice
    @players = []
  end


  def add_person(person)
    @players.push(person)
  end

  def get_player_numbers
   return @players.count
  end

  def check_jump(board, player)
    if board.jumps.count > 0
      for jump in board.jumps
        if jump.start == player.position
          return (jump.finish - jump.start)
        end  
      end
    end
    return 0
  end

  def check_won(player)
    if player.position = @board.squares
      return true else return false
    end
  end


  def run_game()
    # setup - add players etc
    if get_player_numbers > 0
    game_finished = false
      while game_finished == false 
        #go through the list of players
        for player in @players
          key_press = gets
          if key_press == " " 
          # move_player(dice.roll_dice(), board)
          move_player(4, @board)
          move_player(check_jump(@board, player), @board)
          game_finished = check_won
          end
        end
      end
    end

  end
  
  
  #  for each round 
   # for player in players
   #   1) move player ./
   #   2) check if on jump ./
   #   3) move if on jump ./
   #   4) check if won and exit outer loop if true ./
   #   5) wait for user to press space

  
end