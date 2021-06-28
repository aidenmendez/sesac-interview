require 'rspec'
require './lib/grid'
require './lib/bot'
require './lib/princess'
require './lib/navigation'

RSpec.describe Navigation do
  describe '(happy path)' do
    describe "(princess location 1)" do
      let(:grid) {Grid.new(3, ["p--", "-m-", "---"])}
      let(:bot) {Bot.new(grid)}
      let(:princess) {Princess.new(grid)}
      let(:navigation) {Navigation.new(princess, bot)}
  
      it "is an instance of Navigation" do
        expect(navigation).to be_a(Navigation)
      end
  
      it "has correct attributes" do
        expect(navigation.princess).to be_a(Princess)
        expect(navigation.bot).to be_a(Bot)
      end
  
      it "can return directions" do
        directions = ["UP", "LEFT"]
        expect(navigation.get_directions).to eq(directions)
      end
    end

    describe '(size 3, bottom-left)' do
      let(:grid) {Grid.new(3, ["---", "-m-", "p--"])}
      let(:bot) {Bot.new(grid)}
      let(:princess) {Princess.new(grid)}
      let(:navigation) {Navigation.new(princess, bot)}
    
      it "is an instance of Navigation" do
        expect(navigation).to be_a(Navigation)
      end
    
      it "has correct attributes" do
        expect(navigation.princess).to be_a(Princess)
        expect(navigation.bot).to be_a(Bot)
      end
    
      it "can return directions" do
        directions = ["DOWN", "LEFT"]
        expect(navigation.get_directions).to eq(directions)
      end
    end

    describe '(size 3, bottom-right)' do
      let(:grid) {Grid.new(3, ["---", "-m-", "--p"])}
      let(:bot) {Bot.new(grid)}
      let(:princess) {Princess.new(grid)}
      let(:navigation) {Navigation.new(princess, bot)}
    
      it "is an instance of Navigation" do
        expect(navigation).to be_a(Navigation)
      end
    
      it "has correct attributes" do
        expect(navigation.princess).to be_a(Princess)
        expect(navigation.bot).to be_a(Bot)
      end
    
      it "can return directions" do
        directions = ["DOWN", "RIGHT"]
        expect(navigation.get_directions).to eq(directions)
      end
    end

    describe '(size 5, top-right)' do
      let(:grid) {Grid.new(5, ["----p", "-----", "--m--", "-----", "-----"])}
      let(:bot) {Bot.new(grid)}
      let(:princess) {Princess.new(grid)}
      let(:navigation) {Navigation.new(princess, bot)}
    
      it "is an instance of Navigation" do
        expect(navigation).to be_a(Navigation)
      end
    
      it "has correct attributes" do
        expect(navigation.princess).to be_a(Princess)
        expect(navigation.bot).to be_a(Bot)
      end
    
      it "can return directions" do
        directions = ["UP", "UP", "RIGHT", "RIGHT"]
        expect(navigation.get_directions).to eq(directions)
      end
    end
  end
end