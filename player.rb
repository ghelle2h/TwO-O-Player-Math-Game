class Player
  attr_reader :name, :lives
  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end
  
  def lost 
    @lives == 0
  end

  def new_question
    new_question = Question.new
    new_question.ask(name)
    print 
    @choice = $stdin.gets.chomp
    if new_question.answer(@choice.to_i)
      puts "You think you're smart? You are! CORRECT!!"
    else 
      puts "The answer is wrong get back to the drawing board"
      lose_life
    end
  end
end