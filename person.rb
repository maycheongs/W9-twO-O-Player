class Player
  attr_reader :lives, :dead, :name
  def initialize(name)
    @lives = 3
    @dead = false
    @name = name
  end

  def wrong_answer
    @lives -= 1
  end

  def dead?
    @dead = true if @lives == 0
    @dead
  end
end
