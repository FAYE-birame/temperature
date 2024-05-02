# Fonction pour convertir le temps en format HH:MM:SS
def time_string(seconds)
    hours = seconds / 3600
    minutes = (seconds % 3600) / 60
    seconds = (seconds % 3600) % 60
  
    "#{format('%02d', hours)}:#{format('%02d', minutes)}:#{format('%02d', seconds)}"
  end
  
  # Interaction avec l'utilisateur pour obtenir les valeurs de secondes et afficher les résultats en temps réel
  loop do
    puts "Entrez le nombre de secondes (ou 'q' pour quitter) :"
    input = gets.chomp.downcase # Obtient l'entrée de l'utilisateur et la convertit en minuscules
  
    # Vérifie si l'utilisateur souhaite quitter
    break if input == 'q'
  
    # Convertit l'entrée de l'utilisateur en entier et affiche le résultat
    begin
      seconds = Integer(input)
      puts "Temps en format HH:MM:SS : #{time_string(seconds)}"
    rescue ArgumentError
      puts "Entrée invalide. Veuillez entrer un nombre entier de secondes ou 'q' pour quitter."
    end
  end
  