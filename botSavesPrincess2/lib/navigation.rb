class Navigation
  attr_reader :princess, :bot

  def initialize(princess, bot)
    @princess = princess
    @bot = bot
  end

  def get_next_move
    bot_row = @bot.row
    bot_col = @bot.col

    if bot_row < @princess.row
      @bot.row += 1
      return "DOWN"
    elsif bot_row > @princess.row
      @bot.row -= 1
      return "UP"
    elsif bot_col < @princess.col
      @bot.col += 1
      return "RIGHT"
    elsif bot_col > @princess.col
      @bot.col -= 1
      return "LEFT"
    else
      return "Princess found!"
    end
  end
end