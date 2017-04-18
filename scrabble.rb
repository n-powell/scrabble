class Scrabble
  def word_score(word)
    word_value = 0

    word.split("").each do |letter|
      word_value += letter_score(letter)
    end
    word_value
  end

  def letter_score(character)

    letterValues = {
      1 => ["a", "e", "i", "o", "u", "l", "n", "r", "s", "t"],
      2 => ["d", "g"],
      3 => ["b", "c", "m", "p"],
      4 => ["f", "h", "v", "w", "y"],
      5 => ["k"],
      8 => ["j", "x"],
      10 => ["q", "z"],
    }

    letterValue = 0

    letterValues.each_pair do |value, letters|
      if letters.include?(character.downcase)
        letterValue += value
        break
      end
    end

    letterValue

  end

end
