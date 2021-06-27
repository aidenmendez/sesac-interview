class NavRunner
  def initialize(size, grid)
    @grid = Grid.new(size, grid)
    @bot = Bot.new(@grid)
    @princess = Princess.new(@grid)
    @navigation = Navigation.new(@princess, @bot)
  end
end