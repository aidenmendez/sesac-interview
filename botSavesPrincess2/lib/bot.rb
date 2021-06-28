class Bot
  attr_reader :x, :y

  def initialize(grid)
    @grid = grid
    @x = (@grid.size / 2.0).ceil - 1
    @y = (@grid.size / 2.0).ceil - 1
  end
end