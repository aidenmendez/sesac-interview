class Grid
  attr_reader :size, :input_grid

  def initialize(size, grid)
    check_params(size,grid)

    @size = size
    @input_grid = grid
  end

  private

  def check_params(size, grid)
    raise ArgumentError.new('Size parameter must be greater than 2') if size < 3
    raise ArgumentError.new('Size parameter must be an even number') if size % 2.0 == 0
    raise ArgumentError.new('Size does not match actual grid dimensions') if grid.count != size
  end
end