require 'rspec'
require './lib/grid'
require './lib/bot'
require './lib/princess'
require './lib/navigation'
require './lib/nav_runner'

RSpec.describe NavRunner do
  describe '(happy path)' do
    let(:grid) {Grid.new(3, ["p--", "-m-", "---"])}
    let(:bot) {Bot.new(grid)}
    let(:princess) {Princess.new(grid)}
    let(:navigation) {Navigation.new(princess, bot)}
    let(:nav_runner) {NavRunner.new(navigation)}

    it "is an instance of NavRunner" do
      expect(nav_runner).to be_a(NavRunner)
    end

    it "outputs directions to the console" do
      expect(nav_runner.save_princess).to output("UP \n LEFT")
    end
  end
end