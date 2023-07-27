class Question
  #Provide question
#Question class will container game loop
  def initialize
    @num1 = Random.rand(100)
    @num2 = Random.rand(100)
    @answer = @num1 + @num2
  end

  def new_question
   "What does #{@num1} plus #{@num2} equal?"
  end

  def new_answer
    @answer
  end

end