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

class Bot
  attr_accessor :row, :col

  def initialize(r, c)
    @row = r
    @col = c
  end
end

class Navigation
  attr_reader :princess, :bot

  def initialize(princess, bot)
    @princess = princess
    @bot = bot
  end

  def get_next_move
    if @bot.col < @princess.col
      @bot.col += 1
      return "RIGHT"
    elsif @bot.col > @princess.col
      @bot.col -= 1
      return "LEFT"
    elsif @bot.row < @princess.row
      @bot.row += 1
      return "DOWN"
    elsif @bot.row > @princess.row
      @bot.row -= 1
      return "UP"
    end
  end
end

def nextMove(n,r,c,grid)
  game_grid =  Grid.new(n, grid)
  bot = Bot.new(r, c)
  princess = Princess.new(game_grid)
  navigation = Navigation.new(princess, bot)
  print navigation.get_next_move
end

n = gets.to_i

r,c = gets.strip.split.map {|num| num.to_i}

grid = Array.new(n)

(0...n).each do |i|
    grid[i] = gets
end

nextMove(n,r,c,grid)