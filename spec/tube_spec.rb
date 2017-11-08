require 'rspec'
require_relative '../lib/tube'

describe Tube do

  describe 'list of statons' do
    it "returns an array" do
      stations = ["oxford circus", "euston"]
      t = Tube.new
      expect(t.list_of_stations(stations)).to be_an_instance_of(Array)
    end

  end

  describe 'compare arrays' do
    it "returns false if arrays contain same elements" do
      t = Tube.new
      array_1 = [1,2,3]
      array_2 = [1,2]
      expect(t.compare_arrays(array_1, array_2)).to be(false)
    end
    it "returns true if arrays don't have overlapping elements" do
      t = Tube.new
      array_1 = [1,2,3]
      array_2 = [4]
      expect(t.compare_arrays(array_1, array_2)).to be(true)
    end
  end

end
