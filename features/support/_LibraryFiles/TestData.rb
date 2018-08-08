class TestData
  include DataMagic
  attr_accessor :data

  def load_data(scenario)
    begin
      test = scenario.split(" ")[0]
      @data = self.data_for test
    rescue => e
      puts e
    end
  end

  def get_value(key)
    @data[key]
  end

end

