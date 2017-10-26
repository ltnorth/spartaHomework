class Pangram
  def self.pangram? phrase
    alphabet = ("a".."z").to_a
    tally = 0
    alphabet.each { |letter| tally+=1 if phrase.downcase.count(letter)>0 }
    if tally == 26
      true
    else
      false
    end
  end
end
module BookKeeping
  VERSION = 5
end