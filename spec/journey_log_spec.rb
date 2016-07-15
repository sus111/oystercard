require 'journey_log'

  describe JourneyLog do

    let(:Journey) (double(:Journey))

    describe '#initialize' do
    it 'initially log should be empty' do
    expect(subject.log).to be_empty
    end
    end

    describe "#log" do
      it 'logs something' do

      end
    end



  end
