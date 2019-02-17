require 'raindrops'
describe Raindrops do
  subject(:raindrops) { described_class.new }

  it '.create new Raindrops class' do
    expect(described_class).to be(Raindrops)
  end
  it 'should respond to raindrops(number)' do
    expect(subject).to respond_to(:convert).with(1). argument
  end
  it 'raise error when input is not number' do
    expect { subject.convert('abd') }.to raise_error 'You must enter a number!'
  end
end
