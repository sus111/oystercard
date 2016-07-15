require 'Station'

describe Station do

  subject(:station) { described_class.new("Brixton", 2) }


  describe "#initialize" do
    it "returns Brixton as station name" do
      expect(station.name).to eq "Brixton"
    end
    it "returns Zone 2 as zone" do
      expect(station.zone).to eq 2
    end
  end
end
