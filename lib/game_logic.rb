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

  def space_selection(num, piece)
    if num.is_a? Integer && available_spaces[num - 1].class != String
      available_spaces[num - 1] = piece
    else
      
  end
end