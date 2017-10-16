class Game

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def throw
    case
    when @player_1 == @player_2
      return "Draw! Try again."
    when ( @player_1 == 'scissors' && @player_2 == 'paper' ) || ( @player_1 == 'paper' && @player_2 == 'scissors' )
      return "Scissors beats paper!"
    when ( @player_1 == 'paper' && @player_2 == 'rock' ) || ( @player_1 == 'rock' && @player_2 == 'paper' )
      return "Paper beats rock!"
    else ( @player_1 == 'rock' && @player_2 == 'scissors' ) || ( @player_1 == 'scissors' && @player_2 == 'rock' )
      return "Rock beats scissors!"
    end
  end

end
