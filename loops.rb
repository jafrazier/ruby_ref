# array = ["john","mike","steven","drew"]
# p array
# uniq, compact, flatten, take , zip, invert

require 'curb'
require 'json'


class Car
  attr_accessor :vin, :model, :make, :color, :model_year
  def initialize(vin,model,make,color,model_year)
    @vin = vin
    @model = model
    @make = make
    @color = color
    @model_year = model_year
  end
end

myCars = []
vinNum = []
brands = []
  request = Curl::Easy.perform('https://raw.githubusercontent.com/mlaw-nycda/empireCommerce/master/cars.json')
  data = JSON.parse(request.body_str)
  data.each do |n|
    vin = n[0]
    model = n[1]['model']
    make = n[1]['make']
    color = n[1]['color']
    model_year = n[1]['model_year']
    car = Car.new(vin,model,make,color,model_year)
    # car = {vin=> {'model' => model, 'make' => make, 'color' => color, 'model_year' => model_year}}
    myCars << car
    vinNum << vin
    brands << make
    # p "a new #{color} #{model} has been created"

end

sorted = myCars.sort_by { |year|
  year.model_year
}
sorted.reverse.each {|y|
p "#{y.vin} made in #{y.model_year}"
}
p myCars[0].make
