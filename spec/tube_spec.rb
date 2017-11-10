require 'rspec'
require_relative '../lib/tube'

describe Tube do
  before(:each) do
     @tube = Tube.new
   end
  describe 'list of statons' do
    it "returns an array" do
      stations = ["oxford circus", "euston", "brixton", "hammersmith"]
      expect(@tube.list_of_stations(stations)).to be_an_instance_of(Array)
    end

  end

  describe 'compare arrays' do
    array_1 = [1,2,3]
    array_2 = [1,2]
    array_3 = [4]

    it "returns false if arrays contain same elements" do
      expect(@tube.send(:compare_arrays, array_1, array_2)).to be(false)
    end
    it "returns true if arrays don't have overlapping elements" do
      expect(@tube.send(:compare_arrays, array_1, array_3)).to be(true)
    end
  end

  describe 'split strings' do
    arr = ["hello", "hi"]
    arr_two = [["h","e","l","l","o"],["h","i"]]

      it "takes an array of strings and split them into individual characters,
      in separate arrays" do
        expect(@tube.send(:split_strings, arr)).to eq(arr_two)
      end
    end

    describe 'iterate array method' do
      arr_two = [["h","e","l","l","o"],["h","i"],["j","e","a","n","s"]]
      i = ["i","j"]
      it "returns an array of string(s) that constitutes the second array in the argument" do
        expect(@tube.send(:iterate_array, arr_two, i)).to eq(["hi", "jeans"])
      end
    end



end
