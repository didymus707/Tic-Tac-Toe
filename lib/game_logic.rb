class Player
  attr_reader :name, :piece, :choices

  def initialize(name, piece)
    @name = name
    @piece = piece
    @choices = choices
  end
end

class Board
  attr_reader :board, :available_spaces

  def initialize
    @board_size = 3
    (@board_size ** 2).times { |x| @available_spaces << x + 1 }
    @available_spaces
  end

  def validate_selection?(num)
    num.is_a?(Integer) && num > 0 && num <= 9 && $spaces[num - 1].class != String
  end
end