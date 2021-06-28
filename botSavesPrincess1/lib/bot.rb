class Bot
  attr_accessor :row, :col

  def initialize(grid)
    @grid = grid
    @row = (@grid.size / 2.0).ceil - 1
    @col = (@grid.size / 2.0).ceil - 1
  end
end