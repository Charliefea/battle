
class Game

  attr_reader :attacking_player, :opponent

  def initialize(player1, player2)
    @player = [player1, player2]
    @attacking_player = player1
    @opponent = player2
  end

  def player1
    @player.first
  end

  def player2
    @player.last
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turn
    if @attacking_player == player1
      @attacking_player = player2
      @opponent = player1
    else
      @attacking_player = player1
      @opponent = player2
    end
  end
end
