require 'spec_helper'
require 'data_store'

describe DataStore do

  subject(:store) { described_class.new }
  let(:key) { double :key }
  let(:value) { double :value }

  it 'initializes with an empty hash attribute' do
    expect(store.get_data(key)).to be_nil
  end

  describe '#save_data' do
    it 'can store data in a hash' do
      expect(store.save_data(key, value)).to equal value
    end
  end

  describe '#get_data' do
    it 'returns stored data' do
      store.save_data(key, value)
      expect(store.get_data(key)).to equal value
    end
  end

end
