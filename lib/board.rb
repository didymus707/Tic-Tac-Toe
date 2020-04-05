class Board
  attr_reader :board, :available_spaces

  def initialize
    @board_size = 3
    @available_spaces = []
    (@board_size ** 2).times { |x| @available_spaces << x + 1 }
    @available_spaces
  end

  def show_game_board
    puts "=" *25
    $available_spaces.each do |x|
      print "                     #{x}"
      puts "\n\n" if x % 3 == 0 && x != 9
    end
    puts "\n= *25"
  end

  def validate_selection?(num)
    num.is_a?(Integer) && num > 0 && num <= 9 && @available_spaces[num - 1].class != String
  end

  def select_space(num, piece)
    num = gets.chomp.to_i
    if validate_selection?(num)
      @available_spaces[num - 1] = piece
      @available_spaces
    else
      print "Hey! Note; "
      print "\n 1. Don't gimme an already selected number if you don't want me to whack you!" 
      print "\n HAHAHA! Just Kidding"
      print "\n 2. Gimme a #{'Number'.green.bold} between 1 - 9 and pls I mean it, nothing else but a number \n"
      select_space(num, piece)
    end
  end
end

# board = Board.new
# p board.select_space(5, 'M')