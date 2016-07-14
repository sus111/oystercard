require 'journey'

require 'journey'
describe Journey do
  let(:station) { double :station, zone: 1}
  #station = station(zone: 1)
  subject {described_class.new(station)}

  it "a journey is not complete" do
    expect(subject.complete?).to eq false
  end

  it 'has a penalty fare by default' do
    expect(subject.fare).to eq Journey::PENALTY_FARE
  end

  context 'given an entry station' do
    it 'has an entry station' do
      expect(subject.entry_station).to eq station
    end

    it "returns a penalty fare if no exit station given" do
      expect(subject.fare).to eq Journey::PENALTY_FARE
    end

    context 'given an exit station' do
      let(:other_station) { double :other_station }

      before do
        subject.finish(other_station)
      end

      it 'calculates a fare' do
        expect(subject.fare).to eq 1
      end

      it "knows if a journey is complete" do
        expect(subject.complete?).to eq true
      end
    end
  end
end
