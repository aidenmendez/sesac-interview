require 'rspec'
require './lib/grid'
require './lib/bot'
require './lib/princess'
require './lib/navigation'
require './lib/nav_runner'

RSpec.describe NavRunner do
  describe '(happy path)' do
    # let(:grid) {Grid.new(3, ["p--", "-m-", "---"])}
    # let(:bot) {Bot.new(grid)}
    # let(:princess) {Princess.new(grid)}
    # let(:navigation) {Navigation.new(princess, bot)}
    let(:nav_runner) {NavRunner.new(3, ["p--", "-m-", "---"])}

    it "is an instance of NavRunner" do
      expect(nav_runner).to be_a(NavRunner)
    end

    it "has correct attributes" do
      expect(nav_runner.grid).to be_a(Grid)
      expect(nav_runner.bot).to be_a(Bot)
      expect(nav_runner.princess).to be_a(Princess)
      expect(nav_runner.navigation).to be_a(Navigation)
    end
  end
end