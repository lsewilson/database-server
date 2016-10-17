class DataStore

  attr_reader :data

  def initialize
    @data = {}
  end

  def save_data(key, value)
    @data[key] = value
  end

end
