class Board
  attr_accessor :cells

  @cells = []

  def reset!
    self.cells = Array.new(9, " ")
  end

  def initialize
    self.reset!
  end

end
