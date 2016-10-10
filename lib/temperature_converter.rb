
class TemperatureConverter
  KELVIN=273.15
  attr_reader :temperature

  private
  def initialize temperature
    @temperature = temperature.to_f
  end

  public
  def celsius
    temperature
  end

  def fahrenheit
    temperature * 1.8 + plusfahrenheit
  end

  def plusfahrenheit
    32
  end

  def kelvin
    temperature + KELVIN
  end

  def to_text
    %{
      Temperature:
      #{celsius} °C
      #{fahrenheit} °F
      #{kelvin} K
    }
  end

  def to_json
    %{{celsius: #{celsius}, Fahrenheit: #{fahrenheit}, Kelvin: #{kelvin}}
    }
  end

  def to_html
    %{<div>
      <div> #{celsius} °C<div>
      <div> #{fahrenheit} °F<div>
      <div> #{kelvin} K<div>
    <div>
    }
  end

end
