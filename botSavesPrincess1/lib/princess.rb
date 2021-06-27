class Princess
  attr_reader :x, :y

  def initialize(grid)
    @grid = grid
    @x = self.locate[0]
    @y = self.locate[0]
  end
  
  def locate
    limit = @grid.size - 1
    possible_locations = [[0, 0], [0, limit], [limit, 0], [limit, limit]]
    
    possible_locations.find do |coord|
      @grid.input_grid[coord[0]][coord[1]] == 'p'
    end
  end
end