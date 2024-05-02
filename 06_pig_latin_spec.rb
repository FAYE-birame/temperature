# 06_pig_latin.rb

def translate(phrase)
    vowels = ['a', 'e', 'i', 'o', 'u']
    words = phrase.split(' ')
  
    translated_words = words.map do |word|
      if vowels.include?(word[0].downcase)
        word + 'ay'
      else
        consonants = ''
        while !vowels.include?(word[0])
          consonants += word[0]
          word = word[1..-1]
          if consonants[-1] == 'q' && word[0] == 'u'
            consonants += 'u'
            word = word[1..-1]
          end
        end
        word + consonants + 'ay'
      end
    end
  
    return translated_words.join(' ')
  end
  
  # Appel de la fonction translate avec une phrase donnée
  result = translate("Hello World")
  
  # Affichage du résultat
  puts "Résultat de la traduction : #{result}"
  