class Grid
  attr_reader :size, :grid

  def initialize(size, grid)
    @size = size
    @grid = grid
  end

  def bot_location
    mid = (@size / 2.0).ceil - 1

    coordinates = [mid, mid]
  end

  def princess_location
    limit = @size - 1
    possible_locations = [[0, 0], [0, limit], [limit, 0], [limit, limit]]
    
    possible_locations.find do |coord|
      grid[coord[0]][coord[1]] == 'p'
    end
  end
end