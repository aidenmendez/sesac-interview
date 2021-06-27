require 'rspec'
require './lib/grid'
require './lib/princess'

RSpec.describe Princess do
  describe "(happy path)" do
    let(:grid) {Grid.new(3, ["p--", "-m-", "---"])}
    let(:princess) {Princess.new(grid)}

    it "is an instance of Princess" do
      expect(princess).to be_a(Princess)
    end

    it "has x and y coordinates" do
      expect(princess.x).to eq(0)
      expect(princess.y).to eq(0)
    end
  end
end