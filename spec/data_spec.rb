require 'spec_helper'
require 'data_store'

describe DataStore do

  subject(:store) { described_class.new }
  let(:key) { double :key }
  let(:value) { double :value }

  it 'initializes with an empty hash attribute' do
    expect(store.data).to be_empty
  end

  describe '#save_data' do
    it 'can store data in a hash' do
      store.save_data(key, value)
      expect(store.data[key]).to equal value
    end
  end

  describe '#get_data' do
    it 'returns stored data' do
      store.save_data(key, value)
      expect(store.get_data(key)).to equal value
    end
  end

end
