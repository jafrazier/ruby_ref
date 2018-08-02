
# s1 = 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
#
# def countletters(sentance)
#   p sentance.gsub(/[':;., ]/, "").length
# end

# countletters(s1)
# all_buildings = []
# all_appartments = []
# all_tenants = []
# class Building
#   attr_accessor :buildingNum , :floors
#   def initialize(buildingNum,floors)
#     @buildingNum = buildingNum
#     @floors = floors
#   end
# end
# class Apartment  < Building
#   attr_accessor :aptNum
#   def initialize (floor,aptNum,bedrooms,bathrooms,sqfeet,rent,occupied)
#     # super(buildingNum,floors)
#     @floor = floor
#     @aptNum = aptNum
#     @bedrooms = bedrooms
#     @bathrooms = bathrooms
#     @sqfeet = sqfeet
#     @rent = rent
#     @occupied = occupied
#   end
# end
#
# class Tenant < Apartment
#   def initialize(first_name,last_name,age)
#     # super(aptNum,bedrooms,bathrooms,sqfeet,rent,occupied)
#     @first_name = first_name
#     @last_name = last_name
#     @full_name = first_name  + " " + last_name
#     @age = age
#   end
# end
#
# p Tenant.superclass
# p Apartment.superclass




$array = []

def add_to_building(apt)
  $array << apt
end

class Apartment
  def initialize(room_number,bath_room,sq_feet)
    @room_number = room_number
    @bath_room = bath_room
    @sq_feet = sq_feet
    @tenants = []
    add_to_building(self)
  end
  def tenants
    @tenants
  end
end

class Tenant
  attr_accessor :name, :credit_score
  def initialize(name,credit_score)
    @name = name
    @credit_score = credit_score
  end
end
t1= Tenant.new('john',700)
t2= Tenant.new('mike',800)
apt = Apartment.new('B32', 2, 1400)
apt.tenants << t1.name
apt.tenants << t2.name
p apt
