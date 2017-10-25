class Squares
  attr_accessor :length

  def initialize length
    self.length = length
  end

  def sum_of_squares
    squares = (1..self.length).to_a.map! { |n| n**2 }
    squares.reduce(:+)
  end

  def square_of_sum
    (1..self.length).to_a.reduce(:+)**2
  end

  def difference
    self.square_of_sum - self.sum_of_squares
  end
  
end

module BookKeeping
  VERSION = 4
end