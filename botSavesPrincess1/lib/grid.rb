class Grid
  attr_reader :size, :input_grid

  def initialize(size, grid)
    @size = size
    @input_grid = grid
  end

  def bot_location
    mid = (@size / 2.0).ceil - 1

    [mid, mid]
  end
end