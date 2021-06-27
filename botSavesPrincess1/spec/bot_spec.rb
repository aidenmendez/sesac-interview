require 'rspec'
require './lib/grid'
require './lib/bot'

RSpec.describe Bot do
  describe "(happy path)" do
    let(:grid) {Grid.new(3, ["p--", "-m-", "---"])}
    let(:bot) {Bot.new(grid)}

    it "is an instance of Bot" do
      expect(bot).to be_a(Bot)
    end

    it "has x and y coordinates" do
      expect(bot.x).to eq(1)
      expect(bot.y).to eq(1)
    end
  end
end