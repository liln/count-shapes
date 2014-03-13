require "minitest/autorun"
require "shapes"
require "array2d"
require "csv"

class TestShapes < Minitest::Unit::TestCase
  def setup
    csv = CSV.read("test/sample.csv")
    @display = Array2D.new(csv.length, csv[0].length)
    (0...@display.rows).each do |r|
      (0...@display.cols).each do |c|
        @display[c,r] = csv[c][r]
      end
    end
    @display.print_all
  end

  def test_count_shapes
    assert_equal count_shapes(@display), 4
  end
end
