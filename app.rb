require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Josiane")
player2 = Player.new("José")

puts "\nDémarrage de la partie...!\n\n"
puts "Voici l'état de chaque joueur: "
player1.show_state
player2.show_state

puts "\nPassons à la phase d'attaque:\n\n"

while true
  if !player2.isdead
    player2.attacks(player1)
    player1.show_state
    puts "\n\n"
  else
    puts "#{player2.name} est mort !, #{player1.name} remporte ce combat !"
    break
  end

  if !player1.isdead
    player1.attacks(player2)
    player2.show_state
    puts "\n\n"
  else
    puts "#{player1.name} est mort !, #{player2.name} remporte ce combat !"
    break
  end
end

binding.pry