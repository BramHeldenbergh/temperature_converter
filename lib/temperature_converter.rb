
class TemperatureConverter

private
def initialize temp
  @temp = temp.to_f
end

public
def celsius
  @temp
end

def fahrenheit
  @temp * 1.8 + 32
end

def kelvin
  @temp + 273.15
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
