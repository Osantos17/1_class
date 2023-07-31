class Surf
  attr_reader :height, :wind, :swell, :wind_d

  def initialize(input_options)
    @height = input_options[:height]
    @wind = input_options[:wind]
    @wind_d = input_options[:wind_d]
    @swell = input_options[:swell]
  end

  def print_info
    p "The wave height is #{height}ft the wind is #{wind}mph blowing from #{wind_d} and the swell is from the #{swell}."
  end
end

surf = Surf.new(height: 3, wind: 6, wind_d: "SW", swell: "South")

surf.print_info
