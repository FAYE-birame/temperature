# Fonction pour répéter un mot
def echo(word)
    word
  end
  
  # Fonction pour crier un mot (le mettre en majuscules)
  def shout(word)
    word.upcase
  end
  
  # Fonction pour répéter un mot un certain nombre de fois
  def repeat(word, times = 2)
    ([word] * times).join(" ")
  end
  
  # Fonction pour obtenir les premières lettres d'un mot
  def start_of_word(word, num_letters)
    word[0, num_letters]
  end
  
  # Fonction pour obtenir le premier mot d'une phrase
  def first_word(phrase)
    phrase.split.first
  end
  
  # Fonction pour mettre en majuscules la première lettre de chaque mot,
  # sauf pour certains mots exclus (les "petits mots")
  def titleize(title)
    little_words = %w(and the over)
    title.capitalize.split.map { |word| little_words.include?(word) ? word : word.capitalize }.join(" ")
  end
  
  # Appels des fonctions avec des valeurs spécifiques et affichage des résultats
  
  # Appel de la fonction echo
  puts "1. Fonction echo :"
  puts echo("hello")  # Output: "hello"
  puts echo("bye")    # Output: "bye"
  puts ""
  
  # Appel de la fonction shout
  puts "2. Fonction shout :"
  puts shout("hello")        # Output: "HELLO"
  puts shout("hello world")  # Output: "HELLO WORLD"
  puts ""
  
  # Appel de la fonction repeat
  puts "3. Fonction repeat :"
  puts repeat("hello")      # Output: "hello hello"
  puts repeat("hello", 3)   # Output: "hello hello hello"
  puts ""
  
  # Appel de la fonction start_of_word
  puts "4. Fonction start_of_word :"
  puts start_of_word("hello", 1)  # Output: "h"
  puts start_of_word("Bob", 2)    # Output: "Bo"
  puts start_of_word("abcdefg", 3)# Output: "abc"
  puts ""
  
  # Appel de la fonction first_word
  puts "5. Fonction first_word :"
  puts first_word("Hello World")  # Output: "Hello"
  puts first_word("oh dear")      # Output: "oh"
  puts ""
  
  # Appel de la fonction titleize
  puts "6. Fonction titleize :"
  puts titleize("jaws")                           # Output: "Jaws"
  puts titleize("david copperfield")              # Output: "David Copperfield"
  puts titleize("war and peace")                  # Output: "War and Peace"
  puts titleize("the bridge over the river kwai") # Output: "The Bridge Over the River Kwai"
  