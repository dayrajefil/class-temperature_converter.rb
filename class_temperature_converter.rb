class TemperatureConverter
  def initialize(temperature, scale)
    @temperature = temperature
    @scale = scale.downcase
  end

  def to_celsius
    case @scale
    when 'c', 'celsius'
      @temperature
    when 'f', 'fahrenheit'
      (@temperature - 32) * 5 / 9
    when 'k', 'kelvin'
      @temperature - 273.15
    else
      raise ArgumentError, "Scale not supported. Use 'C', 'F', or 'K'."
    end
  end

  def to_fahrenheit
    case @scale
    when 'c', 'celsius'
      @temperature * 9 / 5 + 32
    when 'f', 'fahrenheit'
      @temperature
    when 'k', 'kelvin'
      (@temperature - 273.15) * 9 / 5 + 32
    else
      raise ArgumentError, "Scale not supported. Use 'C', 'F', or 'K'."
    end
  end

  def to_kelvin
    case @scale
    when 'c', 'celsius'
      @temperature + 273.15
    when 'f', 'fahrenheit'
      (@temperature - 32) * 5 / 9 + 273.15
    when 'k', 'kelvin'
      @temperature
    else
      raise ArgumentError, "Scale not supported. Use 'C', 'F', or 'K'."
    end
  end
end

# Usage example:
converter = TemperatureConverter.new(100, 'C')
puts "Celsius: #{converter.to_celsius}°C"
puts "Fahrenheit: #{converter.to_fahrenheit}°F"
puts "Kelvin: #{converter.to_kelvin}K"
