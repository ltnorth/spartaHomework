class Complement
	def self.of_dna strand
    nucleoguys = strand.chars
    complement = []
    check = false
    nucleoguys.each do |guy|
      case guy
      when "A"
        complement.push("U")
      when "T"
        complement.push("A")
      when "C"
        complement.push("G")
      when "G"
        complement.push("C")
      else
        check = true
        break
      end
    end
    if check
      complement = ""
    else
      complement.join
    end
	end
end

module BookKeeping
  VERSION = 4
end