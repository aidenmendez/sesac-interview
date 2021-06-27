class NavRunner
  attr_reader :grid, :bot, :princess, :navigation

  def initialize(size, grid)
    @grid = Grid.new(size, grid)
    @princess = Princess.new(@grid)
    @bot = Bot.new(@grid)
    @navigation = Navigation.new(@princess, @bot)
  end
end