class Game
  attr_accessor :board, :player_1, :player_2, :winner, :user_input

  WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
  ]

  def initialize(player_1=Players::Human.new("X"), player_2=Players::Human.new("O"), board=Board.new)
    @player_1 = player_1
    @player_2 = player_2
    @board = board
    @board.display
  end

  def current_player
    self.board.turn_count.even? ? player_1 : player_2
  end

  def won?
    WIN_COMBINATIONS.each do |winning_combination|
      if (@board.cells[winning_combination[0]] == "X" && @board.cells[winning_combination[1]] == "X" && @board.cells[winning_combination[2]] == "X" || @board.cells[winning_combination[0]] == "O" && @board.cells[winning_combination[1]] == "O" && @board.cells[winning_combination[2]] == "O")
        return winning_combination
      end
    end
    return false
  end

  def draw?
    
  end



end
