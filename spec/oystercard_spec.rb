require 'oystercard'

describe Oystercard do

  let(:oyster) {described_class.new}
  it 'it has a balance of zero' do
  expect(subject.balance).to eq(0)
  end

  describe '#top_up' do
    it {is_expected.to respond_to(:top_up).with(1).argument}
    it 'can top up the balance' do
      expect{subject.top_up(1)}.to change {subject.balance}.by 1
    end

     it 'stops topping up over the limit of 91'  do
       maxlimit = Oystercard::MAX_LIMIT
       expect{subject.top_up(maxlimit + 1)}.to raise_error "Maximum balance of #{maxlimit} exceeded"
     end
   end

    describe 'deduct' do
      it 'will reduce balance by 2' do
        expect{subject.deduct(2)}.to change {subject.balance}.by -2
      end
    end
    describe 'touch_in' do
       it 'allows a user to touch_in' do
         # set instance variable here
         expect(subject.touch_in).to eq(true)
      end
    end
end
