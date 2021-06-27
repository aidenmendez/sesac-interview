class Navigation
  attr_reader :grid, :princess, :bot

  def initialize(grid, princess, bot)
    @grid = grid
    @princess = princess
    @bot = bot
  end

  def get_directions
    # keep track of current bot position
    directions = []
    x = @bot.x
    y = @bot.y

    while y != @princess.y
      if y < @princess.y
        y += 1
        directions << "DOWN"
      elsif y > @princess.y
        y -= 1
        directions << "UP"
      end
    end

    while x != @princess.x
      if x < @princess.x
        x += 1
        directions << "RIGHT"
      elsif x > @princess.x
        x -= 1
        directions << "LEFT"
      end
    end

    directions
  end
end