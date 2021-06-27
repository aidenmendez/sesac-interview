require 'rspec'
require './lib/grid'
require './lib/princess'

RSpec.describe Princess do
  describe "(happy path)" do
    describe "(size 3, top-left)" do
      let(:grid) {Grid.new(3, ["p--", "-m-", "---"])}
      let(:princess) {Princess.new(grid)}
  
      it "is an instance of Princess" do
        expect(princess).to be_a(Princess)
      end
  
      it "has x and y coordinates" do
        expect(princess.row).to eq(0)
        expect(princess.col).to eq(0)
      end
    end

    describe "(size 3, bottom-left)" do
      let(:grid) {Grid.new(3, ["---", "-m-", "p--"])}
      let(:princess) {Princess.new(grid)}
  
      it "is an instance of Princess" do
        expect(princess).to be_a(Princess)
      end
  
      it "has x and y coordinates" do
        expect(princess.row).to eq(2)
        expect(princess.col).to eq(0)
      end
    end

    describe "(size 5, top-right)" do
      let(:grid) {Grid.new(5, ["----p", "-----", "--m--", "-----", "-----"])}
      let(:princess) {Princess.new(grid)}
  
      it "is an instance of Princess" do
        expect(princess).to be_a(Princess)
      end
  
      it "has x and y coordinates" do
        expect(princess.row).to eq(0)
        expect(princess.col).to eq(4)
      end
    end
  end
end