# ========================================================================================
# Assignment 8
# ========================================================================================

# ========================================================================================
#  Problem 1 - Roman Numerals

# implement conversion between integers and roman numerals
# validate using MiniTest unit tests

module Assignment08
  class RomanNumeral

    @@romanKey = {
      "M" => 1000,
      "CM" => 900,
      "D" => 500,
      "CD" => 400,
      "C" => 100,
      "XC" => 90,
      "L" => 50,
      "XL" => 40,
      "X" => 10,
      "IX" => 9,
      "V" => 5,
      "IV" => 4,
      "I" => 1
      }

    def initialize(i)
      # your implementation here
      @start_number = i
    end

    def to_s
      # your implementation here
      working_number = @start_number
      working_string = String.new
      @@romanKey.each do |numeral, value|
         (1..working_number/value).each do
            working_number -= value
            working_string << numeral
         end
      end
      working_string
    end

    def to_i
      # your implementation here
    end

    # bonus: create from Roman Numeral
    def self.from_string
      # your implementation here
      # returns a new instance
    end
  end
end

require 'minitest/autorun'

class RomanNumeralTest < MiniTest::Test
  def initialize
    assert_equal 'I', RomanNumeral.new(1).to_s
    assert_equal 'II', RomanNumeral.new(2).to_s
    assert_equal 'III', RomanNumeral.new(3).to_s
    assert_equal 'IV', RomanNumeral.new(4).to_s
    assert_equal 'V', RomanNumeral.new(5).to_s
    assert_equal 'VI', RomanNumeral.new(6).to_s
    assert_equal 'IX', RomanNumeral.new(9).to_s
    assert_equal 'X', RomanNumeral.new(10).to_s
    assert_equal 'XIX', RomanNumeral.new(19).to_s
    assert_equal 'XXXII', RomanNumeral.new(32).to_s
    assert_equal 'LI', RomanNumeral.new(51).to_s
  end
end


# expected results:
RomanNumeral.new(1).to_s   # => 'I'
RomanNumeral.new(2).to_s   # => 'II'
RomanNumeral.new(3).to_s   # => 'III'
RomanNumeral.new(4).to_s   # => 'IV'
RomanNumeral.new(5).to_s   # => 'V'
RomanNumeral.new(6).to_s   # => 'VI'
RomanNumeral.new(9).to_s   # => 'IX'
RomanNumeral.new(10).to_s  # => 'X'
RomanNumeral.new(19).to_s  # => 'XIX'
RomanNumeral.new(32).to_s  # => 'XXXII'
RomanNumeral.new(51).to_s  # => 'LI'

# bonus:
RomanNumeral.from_string('III').to_i  # => 3
RomanNumeral.from_string('IX').to_i   # => 9
RomanNumeral.from_string('IX').to_i   # => 9

# given any arbitrary integer n:
n == RomanNumeral.from_string(RomanNumeral.new(n).to_s).to_i



# ========================================================================================
#  Problem 2: Golden Ratio

# Golden Ratio is ratio between consecutive Fibonacci numbers
# calculate the golden ratio up to specified precision
# validate using MiniTest unit tests

module Assignment08
  def golden_ratio(precision)
    # your implementation here
    ((1+Math.sqrt(5))/2).round(precision)
  end
end

class GoldenRatioTest < Minitest::Test
  def initialize
    assert_equal 1.62, golden_ratio(2)
    assert_equal 1.61803, golden_ratio(5)
    assert_equal 1.61803399, golden_ratio(8)
  end
end

# expected results:
golden_ratio(2)  # => 1.62
golden_ratio(5)  # => 1.61803
golden_ratio(8)  # => 1.61803399
