class Player

attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = 15
  end

  def receive_damage
    @hit_points -= 10
  end

  def attack(player)
    player.receive_damage
  end

end
