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

    grid.each do |row|
      if row.length != size
        raise ArgumentError.new('Size does not match actual grid dimensions')
      end
    end
  end
end

class Princess
  attr_reader :row, :col

  def initialize(grid)
    @grid = grid
    @row = self.locate[0]
    @col = self.locate[1]
  end
  
  def locate
    limit = @grid.size - 1
    possible_locations = [[0, 0], [0, limit], [limit, 0], [limit, limit]]
    
    location = possible_locations.find do |coord|
      @grid.input_grid[coord[0]][coord[1]] == 'p'
    end

    if location == nil
      raise ArgumentError.new('Princess is not in a corner or does not exist')
    else
      location
    end
  end
end

class Bot
  attr_accessor :row, :col

  def initialize(grid)
    @grid = grid
    @row = (@grid.size / 2.0).ceil - 1
    @col = (@grid.size / 2.0).ceil - 1
  end
end

class Navigation
  attr_reader :princess, :bot

  def initialize(princess, bot)
    @princess = princess
    @bot = bot
  end

  def get_directions
    directions = []

  while @bot.col != @princess.col || @bot.row != @princess.row
    if @bot.row < @princess.row
      @bot.row += 1
      directions << "DOWN"
    elsif @bot.row > @princess.row
      @bot.row -= 1
      directions << "UP"
    elsif @bot.col < @princess.col
      @bot.col += 1
      directions << "RIGHT"
    elsif @bot.col > @princess.col
      @bot.col -= 1
      directions << "LEFT"
    end
  end

    directions
  end
end

def displayPathtoPrincess(n,grid)
  game_grid = Grid.new(n, grid)
  princess = Princess.new(game_grid)
  bot = Bot.new(game_grid)
  navigation = Navigation.new(princess, bot)

  directions = navigation.get_directions

  directions.each do |direction|
    puts direction
  end
end

m = gets.to_i

grid = Array.new(m)

(0...m).each do |i|
    grid[i] = gets.strip
end

displayPathtoPrincess(m,grid)