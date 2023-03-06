
class Game
  def initialize
    @player1 = Player.new("Player 1", 3)
    @player2 = Player.new("Player 2", 3)
    @score = Score.new
  end

  def play
    current_player = @player1
    question = MathQuestion.new(1..20)
    loop do
      puts "#{current_player.name}: #{question.question}"
      answer = gets.chomp.to_i

      if answer == question.answer
        puts "YES! You are correct."
       (current_player == @player1) ? current_player.update_score(1) : @player2.update_score(1)
       (current_player == @player1) ? @score.update_score(1,1) : @score.update_score(2,1)
      else
        puts "Seriously? No!"
        (current_player == @player1) ? current_player.reduce_lives : @player2.reduce_lives
        (current_player == @player1) ? @score.update_score(1,0) : @score.update_score(2,0)
      end
      @score.display_score
      break if !current_player.has_lives?
      current_player = (current_player == @player1) ? @player2 : @player1
      question = MathQuestion.new(1..20)
    end
    winner = (@player1.has_lives?) ? @player1 : @player2
    loser = (winner == @player1) ? @player2 : @player1
    puts "#{loser.name} has no lives left!"
    puts "#{winner.name} wins with a score of #{winner.score}"
    puts "------ GAME OVER -----"
  end
end

