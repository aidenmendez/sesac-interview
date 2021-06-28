require 'rspec'
require './lib/grid'
require './lib/bot'

RSpec.describe Bot do
  describe "(happy path)" do
    describe "(size 3)" do
      let(:grid) {Grid.new(3, ["p--", "-m-", "---"])}
      let(:bot) {Bot.new(grid)}
  
      it "is an instance of Bot" do
        expect(bot).to be_a(Bot)
      end
  
      it "has x and y coordinates" do
        expect(bot.row).to eq(1)
        expect(bot.col).to eq(1)
      end
    end

    describe "(size 5)" do
      let(:grid) {Grid.new(5, ["----p", "-----", "--m--", "-----", "-----"])}
      let(:bot) {Bot.new(grid)}
  
      it "is an instance of Bot" do
        expect(bot).to be_a(Bot)
      end
  
      it "has x and y coordinates" do
        expect(bot.row).to eq(2)
        expect(bot.col).to eq(2)
      end
    end
  end
end