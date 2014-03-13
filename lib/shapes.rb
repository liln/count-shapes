def count_shapes(display)
  count = 0
  n = display.rows
  (0...n).each do |x|
    (0...n).each do |y|
      if display[x,y] == 1
        traverse_shape display, x, y, n
        count += 1
      end
    end
  end
  count
end

def traverse_shape(display, x, y, n)
  return unless x >= 0 && x < n && y >= 0 && y < n
  return unless display[x,y] == 1
  display[x,y] = 0
  traverse_shape display, x-1, y, n
  traverse_shape display, x, y-1, n
  traverse_shape display, x, y+1, n
  traverse_shape display, x+1, y, n
end
