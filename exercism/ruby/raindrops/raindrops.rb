class Raindrops
  def self.convert num
    patter = []
    check = false
    if num % 3 == 0
      patter.push("Pling")
      check = true
    end
    if num % 5 == 0
      patter.push("Plang")
      check = true
    end
    if num % 7 == 0
      patter.push("Plong")
      check = true
    end
    if check
      patter.join
    else
      num.to_s
    end
  end
end

module BookKeeping
  VERSION = 3
end