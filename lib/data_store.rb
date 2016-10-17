class DataStore

  attr_reader :data

  def initialize
    @data = {}
  end

  def save_data(key, value)
    @data[key] = value
  end

  def get_data(key)
    @data[key]
  end

end
