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