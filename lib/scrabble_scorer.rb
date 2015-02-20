def score(word)
    word_split = word.split('')
 points = 0
    word_split.each do |letter|
   if %w(A E I O U L N S T R).include? letter
     points = points + 1
   elsif ["D", "G"].include? letter
     points = points + 2
   else
     points = points + 10
   end
 end
 points
end

file = File.open("./word_list.txt", "rb")
word = file.read

def scrabbler(list)

  values = list.map do |word|
      score(word)
  end
  index = values.index(values.max)
  list[index]
end

p scrabbler(["AA", "AAH", "AAHED", "AAHING", "AAHS", "AAL", "AALII", "AALIIS", "AALS", "AARDVARK", "AARDVARKS", "AARDWOLF", "AARDWOLVES", "AARGH", "AARRGH", "AARRGHH", "AARTI", "AARTIS", "AAS", "AASVOGEL", "AASVOGELS", "AB", "ABA", "ABAC", "ABACA", "ABACAS", "ABACI", "ABACK", "ABACS"])