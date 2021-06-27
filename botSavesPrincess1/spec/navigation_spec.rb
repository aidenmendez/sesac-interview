require 'rspec'
require './lib/grid'
require './lib/bot'
require './lib/princess'
require './lib/navigation'

RSpec.describe Navigation do
  describe 'happy path' do
    let(:grid) {Grid.new(3, ["p--", "-m-", "---"])}
    let(:bot) {Bot.new(grid)}
    let(:princess) {Princess.new(grid)}
    let(:navigation) {Navigation.new(grid, princess, bot)}

    it "is an instance of Navigation" do
      expect(navigation).to be_a(Navigation)
    end
  end
end