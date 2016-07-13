require 'journey'

describe Journey do

  let(:entry_station) { double :entry_station}
  subject(:journey) { described_class.new }

  describe 'start_journey' do
  it 'saves the entry station in the journey hash' do
  expect(subject.journey).to include entry_station
  end

  end

end
