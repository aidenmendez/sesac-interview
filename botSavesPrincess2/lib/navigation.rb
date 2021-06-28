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
    else
      return "Princess found!"
    end
  end
end