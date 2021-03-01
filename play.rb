require './person'
require './game'

player1 = Player.new('Player 1')
player2 = Player.new('Player 2')
game = Game.new(player1, player2)

puts 'Welcome to tWO-O-Player'
puts 'You each have 3 lives, and the player who loses all 3 lives loses. The remaining player wins!'

while !player1.dead? && !player2.dead?
  puts '-------------------'
  puts "#{game.current_player.name}: #{game.new_question}"
  answer = gets.chomp.to_i
  if answer == game.answer
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
