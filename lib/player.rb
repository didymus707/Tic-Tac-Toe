class Player
  attr_reader :name, :piece, :choices, player_piece
  $player_piece = ["O", "X", "M", "P"]

  def initialize(name)
    @name = name
    @piece = select_piece
    @choices = []
  end

  def validate_selection?(num)
    num.is_a?(Integer) && num > 0 && num <= 4 && $player_piece[num - 1].class != String
  end

  def replace_piece(mark)
  end

  def select_piece
    puts "\n#{@name}, Here are the game pieces"
    puts "\n#{$player_piece}"
    puts "\nSelect your preferred piece by typing a Number from 1 - 4 from the option above"
    num = gets.to_i
    if validate_selection?(num)
      p "You have selected #{$player_piece[num - 1]}"
      $player_piece[num - 1] = '-'
    else
    end
    $player_piece[num - 1]
  end
end

puts 'Lemme have your name'
name = gets.chomp
player = Player.new(name)
puts player.piece
puts player_piece