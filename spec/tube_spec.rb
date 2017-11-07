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

end
