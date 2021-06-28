class Navigation
  attr_reader :princess, :bot

  def initialize(princess, bot)
    @princess = princess
    @bot = bot
  end

  def get_directions
    directions = []
    @bot.row
    @bot.col

    while @bot.col != @princess.row
      if @bot.col < @princess.row
        @bot.col += 1
        directions << "DOWN"
      elsif @bot.col > @princess.row
        @bot.col -= 1
        directions << "UP"
      end
    end

    while @bot.row != @princess.col
      if @bot.row < @princess.col
        @bot.row += 1
        directions << "RIGHT"
      elsif @bot.row > @princess.col
        @bot.row -= 1
        directions << "LEFT"
      end
    end

    directions
  end
end