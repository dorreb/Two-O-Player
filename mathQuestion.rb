class MathQuestion 
  attr_reader :question, :answer

  def initialize(range)
    num1 = rand(range)
    num2 = rand(range)
    @question = "What does #{num1} + #{num2} equal?"
    @answer = num1 + num2
  end
end
