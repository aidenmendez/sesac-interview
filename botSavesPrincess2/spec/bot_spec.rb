require 'rspec'
require './lib/grid'
require './lib/bot'

RSpec.describe Bot do
  describe "(happy path)" do
    let(:bot) {Bot.new(2, 4)}
  
    it "is an instance of Bot" do
      expect(bot).to be_a(Bot)
    end

    it "has x and y coordinates" do
      expect(bot.row).to eq(2)
      expect(bot.col).to eq(4)
    end
  end
end