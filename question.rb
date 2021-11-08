class Question
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @sum = @num1 + @num2
  end

  def ask(name)
    puts "#{@num1} and #{@num2} equals?"
  end

  def answer(userInput)
    @sum === userInput
  end
end