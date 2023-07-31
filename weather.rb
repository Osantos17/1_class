#File.open("weather.txt", "r") do |f|
#  text = f.read
#  m1 = text.match(/Dy(.*)2/m)
#  array = []
#  array << m1
#  p array
#end

line = File.open("weather.dat", File::RDONLY) { |f| f.read }

p line
`21`
