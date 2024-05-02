# Fonction pour additionner deux nombres
def add(a, b)
    result = a + b
    puts "Le résultat de l'addition de #{a} et #{b} est #{result}"
    return result
  end
  
  # Fonction pour soustraire deux nombres
  def subtract(a, b)
    result = a - b
    puts "Le résultat de la soustraction de #{a} par #{b} est #{result}"
    return result
  end
  
  # Fonction pour calculer la somme des nombres dans un tableau
  def sum(array)
    result = array.sum
    numbers = array.join(", ")
    puts "La somme des nombres [#{numbers}] est #{result}"
    return result
  end
  
  # Fonction pour multiplier deux nombres
  def multiply(a, b)
    result = a * b
    puts "Le résultat de la multiplication de #{a} par #{b} est #{result}"
    return result
  end
  
  # Fonction pour élever un nombre à la puissance d'un autre nombre
  def power(a, b)
    result = a ** b
    puts "#{a} élevé à la puissance #{b} est égal à #{result}"
    return result
  end
  
  # Fonction pour calculer la factorielle d'un nombre
  def factorial(n)
    result = n == 0 ? 1 : (1..n).reduce(:*)
    puts "La factorielle de #{n} est #{result}"
    return result
  end
  
  # Appel des fonctions avec des valeurs spécifiques
  
  # Addition de 3 et 4
  add_result = add(3, 4)
  
  # Soustraction de 8 par 5
  subtract_result = subtract(8, 5)
  
  # Calcul de la somme des nombres dans le tableau [2, 5, 8]
  sum_result = sum([2, 5, 8])
  
  # Multiplication de 6 par 9
  multiply_result = multiply(6, 9)
  
  # Élévation de 2 à la puissance 5
  power_result = power(2, 5)
  
  # Calcul de la factorielle de 6
  factorial_result = factorial(6)
  