# Fonction pour déterminer le plus grand nombre parmi trois
def who_is_bigger(a, b, c)
    if a.nil? || b.nil? || c.nil?
      return "nil detected"
    elsif a >= b && a >= c
      return "a is bigger"
    elsif b >= a && b >= c
      return "b is bigger"
    else
      return "c is bigger"
    end
  end
  
  # Fonction pour inverser, mettre en majuscules et supprimer les lettres L, T et A d'une chaîne de caractères
  def reverse_upcase_noLTA(string)
    string.reverse.upcase.delete("LTA")
  end
  
  # Fonction pour trouver si 42 est présent dans un tableau
  def array_42(array)
    array.include?(42)
  end
  
  # Fonction pour effectuer différentes opérations sur un tableau
  def magic_array(array)
    array.flatten.uniq.sort.map { |x| x * 2 }.reject { |x| x % 3 == 0 }
  end
  
  # Appels des fonctions avec des valeurs spécifiques et affichage des résultats
  
  # Appel de la fonction who_is_bigger
  puts "1. Fonction who_is_bigger :"
  puts who_is_bigger(84, 42, nil)   # Output: "nil detected"
  puts who_is_bigger(nil, 42, 21)   # Output: "nil detected"
  puts who_is_bigger(84, 42, 21)    # Output: "a is bigger"
  puts who_is_bigger(42, 84, 21)    # Output: "b is bigger"
  puts who_is_bigger(42, 21, 84)    # Output: "c is bigger"
  puts ""
  
  # Appel de la fonction reverse_upcase_noLTA
  puts "2. Fonction reverse_upcase_noLTA :"
  puts reverse_upcase_noLTA("Tries this at Home, Kids")   # Output: "SDIK ,EMOH  SIH SEIR"
  puts reverse_upcase_noLTA("Ponies loves carrots")       # Output: "SORRC SEVO SEINOP"
  puts reverse_upcase_noLTA("qwertyuiopasdfghjkl;zxcvbn")# Output: "NBVCXZ;KJHGFDSPOIUYREWQ"
  puts ""
  
  # Appel de la fonction array_42
  puts "3. Fonction array_42 :"
  puts array_42([1, 2, 3, 4, 5, 6, 7 , 8, 9, 10])         # Output: false
  puts array_42([1, 2, 3, 4, 5, 6, 7 , 8, 9, 42, 21, 10.5])# Output: true
  puts ""
  
  # Appel de la fonction magic_array
  puts "4. Fonction magic_array :"
  puts magic_array([1, 2, 3, 4, 5, 6])# Output: [2, 4, 8, 10]
  puts magic_array([1, [2, 3], 4, 5, 6, 23, 31, [1, 2, 3]])# Output: [2, 4, 8, 10, 46, 62]
  puts magic_array([[32, 54], [48, 12], [21, [1, 2, [3]]], 7, 8])# Output: [2, 4, 14, 16, 64]
  