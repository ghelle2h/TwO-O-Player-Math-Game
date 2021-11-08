class Match
  def initialize(name)
    @name = name
    @player_1 = Player.new('Player 1')
    @player_2 = Player.new('Player 2')
  end

  def start
    puts "New Match!!! Get ready.... #{@player_1.name} and #{@player_2.name} square up"
    turn
  end

  def result
    puts "Player 1: #{@player_1.lives} lives left vs Player 2: #{@player_2.lives} lives left"
  end

  def turn 
    @player_1.new_question
    score
    @player_2.new_question
    score
    result
    puts "New Turn -----------------------"
    turn
  end

  def score
    if @player_1.lost 
      winner(@player_2)
    elseif @player_2.lost
      winner(@player_1)
    end
  end

  def winner(name)
    puts "The winner is #{@player_1.name} with #{@player_1.lives} lives left you scrubs"
    exit(0)
  end
end