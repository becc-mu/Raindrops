require 'raindrops'
describe Raindrops do
  include Calculate
  subject(:raindrops) { described_class.new }

  describe '#create' do
    it '.create new Raindrops class' do
      expect(described_class).to be(Raindrops)
    end
    it 'should respond to raindrops(number)' do
      expect(subject).to respond_to(:convert).with(1). argument
    end
    it 'returns number when passed with no factors' do
      expect(subject.convert(1)).to eq(1)
    end
  end

  describe '#module' do
    it 'raise error when input is not number' do
      expect { number_is_a?('abd') }.to raise_error 'You must enter a number!'
    end
    it 'raise error when input is less than 1' do
      expect { number_is_not_zero?(-5) }.to raise_error 'Number must be positive'
    end
    it 'return true if the number divided by the factor with no remainder' do
      expect(get_factor(3, 3)).to eq(true)
    end
  end

  describe '#factors' do
    it 'return Pling if the number has a factor of 3' do
      expect(subject.convert(3)).to eq('Pling')
    end
    it 'return Plang if the number has a factor of 5' do
      expect(subject.convert(5)).to eq('Plang')
    end
    it 'return Plong if the number has a factor of 7' do
      expect(subject.convert(7)).to eq('Plong')
    end
    it 'return number if no factors' do
      expect(subject.convert(34)).to eq(34)
    end

  end

  describe '#factors concat' do
    it 'returns PlingPlang when passed a factor of 3 and 5' do
      expect(subject.convert(15)).to eq('PlingPlang')
    end
    it 'returns PlingPlong when passed a factor of 3 and 7' do
      expect(subject.convert(21)).to eq('PlingPlong')
    end
    it 'returns PlangPlong when passed a factor of 5 and 7' do
      expect(subject.convert(35)).to eq('PlangPlong')
    end
    it 'returns PlingPlong when passed a factor of 3, 5 and 7' do
      expect(subject.convert(105)).to eq('PlingPlangPlong')
    end
  end

end
