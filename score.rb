class Score
  attr_reader :player1_score, :player2_score

  def initialize
    @player1_score = 0
    @player2_score = 0
  end

  def update_score(player, points)
    if player == 1
      @player1_score += points
    elsif player == 2
      @player2_score += points
    end
  end

  def display_score
    puts "Current score:"
    puts "Player 1: #{player1_score} vs Player 2: #{player2_score}"
    puts "----- NEW TURN -----"
  end
end
