require 'rspec'
require './lib/grid'
require './lib/bot'
require './lib/princess'
require './lib/navigation'

RSpec.describe Navigation do
  describe '(happy path)' do
    describe "(princess location 1)" do
      let(:grid) {Grid.new(3, ["p--", "-m-", "---"])}
      let(:bot) {Bot.new(1, 1)}
      let(:princess) {Princess.new(grid)}
      let(:navigation) {Navigation.new(princess, bot)}
  
      it "is an instance of Navigation" do
        expect(navigation).to be_a(Navigation)
      end
  
      it "has correct attributes" do
        expect(navigation.princess).to be_a(Princess)
        expect(navigation.bot).to be_a(Bot)
      end
  
      it "can return next move" do
        next_move = "LEFT"
        expect(navigation.get_next_move).to eq(next_move)
      end
    end

    describe '(size 3, bottom-left)' do
      let(:grid) {Grid.new(3, ["---", "-m-", "p--"])}
      let(:bot) {Bot.new(0, 2)}
      let(:princess) {Princess.new(grid)}
      let(:navigation) {Navigation.new(princess, bot)}
    
      it "is an instance of Navigation" do
        expect(navigation).to be_a(Navigation)
      end
    
      it "has correct attributes" do
        expect(navigation.princess).to be_a(Princess)
        expect(navigation.bot).to be_a(Bot)
      end
    
      it "can return next move" do
        next_move = "LEFT"
        expect(navigation.get_next_move).to eq(next_move)
      end
    end

    describe '(size 3, bottom-right)' do
      let(:grid) {Grid.new(3, ["---", "-m-", "--p"])}
      let(:bot) {Bot.new(0, 2)}
      let(:princess) {Princess.new(grid)}
      let(:navigation) {Navigation.new(princess, bot)}
    
      it "is an instance of Navigation" do
        expect(navigation).to be_a(Navigation)
      end
    
      it "has correct attributes" do
        expect(navigation.princess).to be_a(Princess)
        expect(navigation.bot).to be_a(Bot)
      end
    
      it "can return next move" do
        next_move = "DOWN"
        expect(navigation.get_next_move).to eq(next_move)
      end
    end

    describe '(size 5, top-right)' do
      let(:grid) {Grid.new(5, ["-----", "m----", "-----", "-----", "-p---"])}
      let(:bot) {Bot.new(1, 0)}
      let(:princess) {Princess.new(grid)}
      let(:navigation) {Navigation.new(princess, bot)}
    
      it "is an instance of Navigation" do
        expect(navigation).to be_a(Navigation)
      end
    
      it "has correct attributes" do
        expect(navigation.princess).to be_a(Princess)
        expect(navigation.bot).to be_a(Bot)
      end
    
      it "can return next moves when consecutively called" do
        first_move = "RIGHT"
        expect(navigation.get_next_move).to eq(first_move)

        second_move = "DOWN"
        expect(navigation.get_next_move).to eq(second_move)

        third_move = "DOWN"
        expect(navigation.get_next_move).to eq(third_move)

        last_move = "DOWN"
        expect(navigation.get_next_move).to eq(last_move)
      end
    end
  end
end