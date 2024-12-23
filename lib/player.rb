class Player
  attr_accessor :name, :health, :isdead

  def initialize(name)
    @name = name
    @health = 10
    @isdead = false
  end

  def state
    puts "#{@name} a #{@health} points de vie"
  end

  def damage(damage)
    if @isdead == true
      puts "#{@name} est déjà mort"
    elsif (@health - damage) <= 0
      @health = 0
      @isdead = true
    else
      @health -= damage
    end
  end

  def attack(player)
    damage = rand(1..4)
    player.damage(damage)
    puts "#{@name} inflige #{damage} de dégats a #{player.name}"
  end
end