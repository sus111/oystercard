require 'oystercard'

describe Oystercard do
  let(:oyster) {described_class.new}
  it 'it has a balance of zero' do
  expect(subject.balance).to  eq(0)
  end
  # it 'responds to top_up' do
  #   expect(oyster).to  respond_to(:top_up).with(1).argument
  # end
#re written the above using this:
  describe '#top_up' do
    it {is_expected.to respond_to(:top_up).with(1).argument}
    it 'can top up the balance' do
      expect{subject.top_up 1}.to change {subject.balance}.by 1
    end
  end
end
