require 'raindrops'
describe Raindrops do
  subject(:raindrops) { described_class.new }

  it '.create new Raindrops class' do
    expect(described_class).to be(Raindrops)
  end
  it 'should respond to raindrops(number)' do
    expect(subject).to respond_to(:convert).with(1). argument
  end
end
