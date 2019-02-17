require 'raindrops'
describe Raindrops do
  subject(:raindrops) { described_class.new }

  describe '#create' do
    it '.create new Raindrops class' do
      expect(described_class).to be(Raindrops)
    end
    it 'should respond to raindrops(number)' do
      expect(subject).to respond_to(:convert).with(1). argument
    end
    it 'raise error when input is not number' do
      expect { subject.convert('abd') }.to raise_error 'You must enter a number!'
    end
    it 'raise error when input is less than 1' do
      expect { subject.convert(-5) }.to raise_error 'Number must be positive'
    end
    it 'returns number when passed with no factors' do
      expect(subject.convert(1)).to eq(1)
    end

    describe '#factors' do
      it 'return Pling if the number has a factor of 3' do
        expect(subject.convert(3)).to eq('Pling')
      end
    end
  end

end
