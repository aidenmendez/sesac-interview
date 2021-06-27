class Navigation
  attr_reader :princess, :bot

  def initialize(princess, bot)
    @princess = princess
    @bot = bot
  end

  def get_directions
    directions = []
    x = @bot.x
    y = @bot.y

    while y != @princess.row
      if y < @princess.row
        y += 1
        directions << "DOWN"
      elsif y > @princess.row
        y -= 1
        directions << "UP"
      end
    end

    while x != @princess.col
      if x < @princess.col
        x += 1
        directions << "RIGHT"
      elsif x > @princess.col
        x -= 1
        directions << "LEFT"
      end
    end

    directions
  end
end