require 'rspec'
require './lib/grid'

RSpec.describe Grid do
  describe "(happy path)" do
    size = 3
    let(:grid) {Grid.new(size)}

    it "is an instance of Grid" do
      expect(grid.class).to be_a(Grid)
    end

    it "has valid attributes" do
      expect(grid.size).to eq(size)
      expect(grid.layout).to eq(['p--'], ['-m-'], ['---'])
      expect(grid.me).to eq([2,2])
      expect(grid.princess).to eq([0,0])
    end
  end
  
  descibe "(sad path)" do

  end
end