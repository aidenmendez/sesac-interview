require 'rspec'
require './lib/grid'

RSpec.describe Grid do
  describe "(happy path)" do
    size = 3
    let(:grid) {Grid.new(size)}

    it "is an instance of Grid" do
      expect(grid).to be_a(Grid)
    end

    it "has valid attributes" do
      expect(grid.size).to eq(size)
      expect(grid.layout).to eq([['p--'], ['-m-'], ['---']])
      expect(grid.my_location).to eq([2,2])
      expect(grid.princess_location).to eq([0,0])
    end

    it "can have dimensions greater than three" do
      grid2 = Grid.new(9)
      expect(grid.size).to eq(size)
      expect(grid.layout).to eq([['p--------'], ['----m----'], ['---------']])
      expect(grid.my_location).to eq([5,5])
      expect(grid.princess_location).to eq([0,0])
    end
  end
end