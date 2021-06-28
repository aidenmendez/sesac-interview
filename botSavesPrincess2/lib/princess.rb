class Princess
  attr_reader :row, :col

  def initialize(grid)
    @grid = grid
    @row = nil
    @col = nil
    self.locate
  end
  
  def locate
    @grid.input_grid.each_with_index do |row, i|
      if row.include?('p')
        @row = i
        @col = row.index('p')
        break
      end
    end
  end
end