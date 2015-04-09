class Temperature

  attr_reader :in_fahrenheit, :in_celsius

  def initialize(temperature)
    @in_fahrenheit = temperature[:f] || temperature[:c] * 9 / 5.0 + 32
    @in_celsius = temperature[:c] || (temperature[:f] - 32) * 5 / 9.0
  end

  class << self

    def from_celsius(temperature)
      new c: temperature
    end

    def from_fahrenheit(temperature)
      new f: temperature
    end

    def ftoc(temperature)
      from_fahrenheit(temperature).in_celsius
    end

    def ctof(temperature)
      from_celsius(temperature).in_fahrenheit
    end

  end

end

class Celsius < Temperature

  def initialize(temperature)
    super c: temperature
  end

end

class Fahrenheit < Temperature

  def initialize(temperature)
    super f: temperature
  end

end
