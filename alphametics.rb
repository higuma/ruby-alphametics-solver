require 'set'

module Alphametics
  def solve(puzzle)
    puzzle = puzzle.upcase
    words = puzzle.scan /[A-Z]+/
    chars = Set.new(words.join.each_char)
    abort 'Too many letters' if chars.size > 10
    first_chars = Set.new(words.map {|w| w[0]})
    sorted_chars = first_chars.to_a.join + (chars - first_chars).to_a.join
    n = first_chars.size
    %w[0 1 2 3 4 5 6 7 8 9].permutation(chars.size).each do |guess|
      next if guess[0, n].member?('0')
      expr = puzzle.tr(sorted_chars, guess.join)
      return expr if eval(expr)
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  include Alphametics
  ARGV.each do |arg|
    puts arg
    puts AlphabeticsSolver.solve(arg)
  end
end
