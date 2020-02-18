require_relative 'test'

puts "\n" + '*' * 50
puts "\n          ---- Tic Tac TRONIX 2000 ----"
puts "\n        An strategy game for two players."
puts "\n             Creative Commons 2020"
puts "\n" + '*' * 50
puts "\n Tic Tac TRONIX 2000 is based on the classic Tic
 Tac Toe game."

puts "\n INSTRUCTIONS: to play select \"Y\", you'll be
 asked to introduce the name of both Players. Once
 set up, players will take turns to leave their
 marks (X's or O's) on the board. The player who
 first has 3 marks in a row wins the game."

puts "\n                   __RULES__
\n1. The game is played on a grid that's 3x3 squares.
2. Player One is X's and Player Two is 0's.
3. X always starts the game.
4. Players take turns putting their marks in unselected
   squares.
5. The first player to get 3 marks in a row (up,
   down, across, or diagonally) is the winner.
6. When all 9 squares are full, the game is over.
   If no player has 3 marks in a row, the game ends
   in a tie."

print "\nDo you wanna play? Y/n: "
answer = gets.chomp
prompt = '> '

if /^y(es){0,1}$/i =~ answer
  puts "\nPlayer 1 & Player 2 enter your names: "
  print prompt
  name = gets.chomp
  print prompt
  name2 = gets.chomp
  game = Game.new(name, name2)
  puts "\nWelcome players!,
  #{game.p1.name} you'll play as the '#{game.p1.tile}'
  and #{game.p2.name} you'll play as the '#{game.p2.tile}'."

  puts "\nThis is the board"
  game.play(answer)
elsif /^no{0,1}$/i =~ answer
  puts 'Goodbye...'
else
  puts "\nDidn't get you. You said you wanna play: Yes or No?"
  print prompt
  answer = gets.chomp
  puts "\nPlayer 1 & Player 2 enter your names: "
  print prompt
  name = gets.chomp
  print prompt
  name2 = gets.chomp
  game = Game.new(name, name2)
  puts "\nWelcome players!,
  #{game.p1.name} you'll play as the '#{game.p1.tile}'
  and #{game.p2.name} you'll play as the '#{game.p2.tile}'."
  puts "\nThis is the board"

  game.play(answer)
end



while game.result
  # prompt = '> '
  # puts "\nPlayer 1 choose your name: "
  # print prompt
  # name = gets.chomp
  # game.player_validation(name)
  # puts "\nNow, Player 2 choose your name: "
  # print prompt
  # name = gets.chomp
  # game.player_validation(name)
end