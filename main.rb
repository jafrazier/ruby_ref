def runtime
  start
  p "do you want to continue? [Y/N]"
  re = gets.chomp
  if (re == "y" || re == "Y")®
    start
  end
end

def start
  p "what is your name?"
  name = gets.chomp
  p "what is your email"
  email = gets.chomp
  user = User.new(name,email)
  puts "name: #{name} \n Email: #{email}"
end

class User
  attr_accessor :name,:email
  def initialize(name,email)
    @name = name
    @email = email
    p "new User created"
  end
end
runtime























# require 'csv'
#
# CSV.foreach("mydata.csv") do |row|
#   row.each {|x| x.downcase!}
#   next if (row[0][0] == 'c' || row[0][0] == 'b' || row[0][0] == 'a' || row[0][0] == 'f')
#   p row
# end
#
#
# car1 = {'color' => 'red', 'model' => 'camery', 'make' => 'toyota'}
# p car1
# x = car1.to_a
# z = [] ; z << x[1];  z.to_h
# p z
#
#
# # Make a ruby function that adds 8.8% tax if given a number. If it's given a string it should puts a message asking for a number instead and return nil.
#
#
# def taxCal(price)
#   tax = 1.088
#  if price > 0
#    p price * tax
#  elsif price = price.try_convert(/re/)
#    p 'please input a valid number'
#  end
# end
#
# # Part 2
# #
# # Make a ruby function that finds the letter that appears the most often within a string and returns it. Take for instance if given "Bob is a very nice gardener" the program should puts "e". Since the letter "e" appears 4 times.
#
#
#
# def is_panagram(sentance)
#   abc = ('a'..'z').to_a
#   letters = Hash.new{0}
#   abc.each do |letter|
#     letters[letter] = 0
#   p letters
# end
#   sentance = sentance.gsub(/\s+/,"")
#   char_in_sentance = sentance.downcase.split('')
#   x = letters.keys
#   char_in_sentance.each { |y|
#     if x.include?(y)
#       letters[y] += 1
#       p y
#     end
#   }
#   lettersorted = letter.values.sort
#   p lettersorted
# end
#
# def mostLetters(sentance)
#   breakdown = sentance.downcase.split('').sort
#   p breakdown
#   letter = Hash.new{0}
#   breakdown.each do |something|
#     p something
# end
# end
#
#
# mostLetters('Lorem ipsum dolor sit amet, consectetur adipisicing elit,')
