class Grid
  attr_reader :size

  def initialize(size)
    @size = size
  end

  def layout
    grid_layout = [['p--'], ['-m-'], ['---']]
  end

  def my_location
    mid = (@size / 2.0).ceil

    coordinates = [mid, mid]
  end

  def princess_location(coords = [0,0])
    # if princess will always be in corner of square, use top left
    coordinates = [0, 0]
  end
end