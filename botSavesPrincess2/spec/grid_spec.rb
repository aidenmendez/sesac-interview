require 'rspec'
require './lib/grid'

RSpec.describe Grid do
  describe "(happy path)" do
    let(:grid) {Grid.new(3, ["p--", "-m-", "---"])}

    it "is an instance of Grid" do
      expect(grid).to be_a(Grid)
    end

    it "has valid attributes" do
      expect(grid.size).to eq(3)
    end

    it "can have dimensions greater than three" do
      grid2 = Grid.new(5, ["----p", "-----", "--m--", "-----", "-----"])
      expect(grid2.size).to eq(5)
      expect(grid2.input_grid).to eq(["----p", "-----", "--m--", "-----", "-----"])
    end
  end

  describe "(sad path)" do
    it "raises error if size param is less than 3" do
      expect{ Grid.new(2, ["p-", "-m"]) }.to raise_error(ArgumentError)    
    end

    it "raises an error if size is an even number" do
      expect{ Grid.new(4, ["p---", "-m--", "----", "----"])}.to raise_error(ArgumentError)
    end
  end
end