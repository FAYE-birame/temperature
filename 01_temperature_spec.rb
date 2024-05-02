# 01_temperature.rb

## Définition de la fonction de conversion de Fahrenheit à Celsius
def ftoc(fahrenheit)
    (fahrenheit - 32) * 5.0 / 9.0
  end
  
  # Définition de la fonction de conversion de Celsius à Fahrenheit
  def ctof(celsius)
    celsius * 9.0 / 5.0 + 32
  end
  
  # Test de la fonction ftoc avec différentes valeurs
  puts "Conversion de Fahrenheit à Celsius :"
  puts "32°F = #{ftoc(32)}°C"
  puts "212°F = #{ftoc(212)}°C"
  puts "98.6°F = #{ftoc(98.6)}°C"
  puts "68°F = #{ftoc(68)}°C"
  
  puts ""
  
  # Test de la fonction ctof avec différentes valeurs
  puts "Conversion de Celsius à Fahrenheit :"
  puts "0°C = #{ctof(0)}°F"
  puts "100°C = #{ctof(100)}°F"
  puts "20°C = #{ctof(20)}°F"
  puts "37°C = #{ctof(37)}°F"
  
  