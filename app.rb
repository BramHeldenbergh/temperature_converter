require './lib/temperature_converter.rb'
require 'open-uri'

converter=TemperatureConverter.new ARGV.first.to_f
puts converter.to_text
puts converter.to_json
puts converter.to_html

converter=TemperatureConverter.new File.read("temp.txt")
puts converter.to_text
puts converter.to_json
puts converter.to_html

converter=TemperatureConverter.new open('http://labict.be/software-engineering/temperature/api/temperature/fake') {|f| f.read }
puts converter.to_text
puts converter.to_json
puts converter.to_html
