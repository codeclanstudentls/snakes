class Board
attr_reader :squares , :jumps

  def initialize()
  @squares = 64
  @jumps = []
  end

def add_jump(jump)
  @jumps.push(jump)
end

  
end


