class Player
  attr_reader :name, :lives, :score
  
  def initialize(name, lives)
    @name = name
    @lives = lives
    @score = 0
  end

  def reduce_lives
    @lives -= 1
  end

  def has_lives?
    @lives > 0
  end

  def update_score(points)
    @score += points
  end
end