class Array2D
  def initialize(width, height)
    @width = width
    @height = height
    @array = Array.new(width) { Array.new(height) }
  end

  def [](x,y)
    @array[x][y]
  end

  def []=(x,y,value)
    @array[x][y] = value.to_i
  end

  def cols
    @width
  end

  def rows
    @height
  end

  def print_all
    (0...rows).each do |r|
      (0...cols).each do |c|
        print @array[c][r].to_s + " "
      end
      print "\n"
    end
    print "\n"
  end
end
