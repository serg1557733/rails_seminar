# Warning:
# - One line of code for each method
# - Just look in the doc for the right method of the String, Integer, and Array classes!

def get_rid_of_surrounding_whitespaces(a_string)
  # TODO: Returne den String, entferne dabei führende und nachfolgende Leerzeichen
  # Beispiel: get_rid_of_surrounding_whitespaces("  hey yo  ") => "hey yo"
  a_string.strip
end

def belongs_to?(a_string, a_word)
  # TODO: Returne true when das Wort im String vorhanden ist
  # example: belongs_to?("hey jude", "jude") => true
  a_string.include? a_word
end

def replace(initial_string, old_letter, new_letter)
  # TODO: Returne den String und ersezte den old_letter durch den new_letter
  # example: replace("casanova", "a", "o") => "cosonovo"
  initial_string.gsub(old_letter, new_letter)
end

def exactly_divide(an_integer, a_divider)
  # TODO: Gibt das Ergebnis der Division von an_integer durch a_divider zurück (berechnet die Gleitkommadivision, NICHT die euklidische)
  # example: exactly_divide(13, 4) => 3.25
  an_integer / a_divider
end

def divisible_by_two?(an_integer)
  # TODO: Returne true sofern die Zahl durch 2 teilbar ist
  # example: divisible_by_two?(6) => true
  an_integer.even?
end

def random_subset(an_array, sample_size)
  # TODO: Returne a random subset of an_array with size sample_size
  # example: random_subset(("a".."z").to_a, 4) => ["u", "q", "l", "t"]
  an_array.sample(sample_size)
end

def randomize(an_array)
  # TODO: Returne eine zufällige Teilmenge von dem Array mit der Größe sample_size zurück.
  # example: randomize([1, 2, 3, 4]) => [2, 1, 4, 3]
  an_array.shuffle
end

def ascending_order(an_array)
  # TODO: Returne eine Kopie von an_array zurück, bei der die Elemente in aufsteigender Reihenfolge sortiert sind.
  # example: ascending_order([7, 3, 1, 6, 9]) => [1, 3, 6, 7, 9]
  an_array.sort
end
