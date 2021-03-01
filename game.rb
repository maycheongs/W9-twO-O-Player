require './person'

class Game
  attr_accessor :turn, :question, :answer

  def initialize(player1, player2)
    @turn = 1
    @player1 = player1
    @player2 = player2
    @question = []
    @answer = ''
  end

  def next_turn
    @turn += 1
  end

  def current_player
    @turn % 2 == 0 ? @player2 : @player1
  end

  def new_question()
    num1 = rand(20) + 1
    num2 = rand(20) + 1
    @question = [num1, num2]
    puts "What does #{num1} and #{num2} equal?"
  end

  def answer()
    @answer = @question[0] + @question[1]
  end
end
