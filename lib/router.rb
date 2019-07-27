require_relative 'controller'

class Router

  def initialize
    @controller = Controller.new
  end

  def perform
    puts "BIENVENUE DANS THE GOSSIP PROJECT"
    while true
      # On affiche le menu.
      puts "Tu veux faire quoi jeune mouss' ?"
      puts "1. Je veux créer un gossip"
      puts "4. Je veux quitter l'app"
      params = gets.chomp.to_i

      case params   # en fonction du choix
      when 1 
        puts "Tu as choisi de créer un gossip"
        @controller.create_gossip
      when 4 
        puts "A bientôt !"
        break
      else
        puts "Ce choix n'existe pas, merci de ressayer" #Si l'utilisateur saisit une entrée non prévue, il retourne au début du "while true". 
        #C'est pour ça que la boucle est infinie: potentiellement, il peut se gourer jusqu'à la fin des temps :)
      end
    end
  end
end
