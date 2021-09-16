RSpec.describe Nanoid do
  it 'has a version number' do
    expect(Nanoid::VERSION).not_to be nil
  end

  shared_examples :generator do |method_name|
    it 'defaults to 21 chars' do
      expect(Nanoid.send(method_name).length).to eq(21)
    end

    it 'allows for length to be specified' do
      expect(Nanoid.send(method_name, 10).length).to eq(10)
    end

    it 'uses a valid alphabet' do
      expect(Nanoid.send(method_name, 100)).to match(/^(\w|\d|-|_){100}$/)
    end
  end

  describe '.generate' do
    include_examples :generator, :generate
  end
end
