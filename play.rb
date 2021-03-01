require './person'
require './game'

player1 = Player.new('Player 1')
player2 = Player.new('Player 2')
game = Game.new(player1, player2)

questions = [
  {},
  { question: 'What does 5 + 6 equal?', answer: 11 },
  { question: 'What does 2 plus 6 equal', answer: 8 },
  { question: '10 times 10 equals?', answer: 100 },
  { question: '200 divided by 50 equals?', answer: 4 },
  { question: '3 times 3 equals?', answer: 9 },
  { question: '4 plus 4 equals?', answer: 8 },
  { question: '2 minus 2 equals?', answer: 0 },
  { question: '6 divided by 2 equals?', answer: 3 },
]

puts 'Welcome to tWO-O-Player'
puts 'You each have 3 lives, and the player who loses all 3 lives loses. The remaining player wins!'

while !player1.dead? && !player2.dead?
  puts '-------------------'
  puts "#{game.current_player.name}: #{questions[game.turn][:question]}"
  answer = gets.chomp.to_i
  if answer == questions[game.turn][:answer]
    puts 'YES! You are correct'
    game.next_turn
  else
    puts 'Wrong answer.. you lose a life'
    game.current_player.wrong_answer
    game.next_turn
  end
  puts "P1: #{player1.lives} P2: #{player2.lives}"
end

puts '-----GAME OVER-----'
puts "#{game.current_player.name} wins with #{game.current_player.lives} lives left"
