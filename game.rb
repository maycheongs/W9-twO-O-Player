require './person'

class Game
  attr_accessor :turn

  def initialize(player1, player2)
    @turn = 1
    @player1 = player1
    @player2 = player2
  end

  def next_turn
    @turn += 1
  end

  def current_player
    @turn % 2 == 0 ? @player2 : @player1
  end
end
