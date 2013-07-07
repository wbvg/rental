require 'pry'
require 'pry-debugger'






require_relative 'building'
require_relative 'person'
require_relative 'apartment'

building = nil


print "add (p)erson or (a)partment or (b)uilding or (q)uit: "
response = gets.chomp.downcase
while response != 'q'
  if response == 'p'
    print "Name: "
    name = gets.chomp
    print "Age: "
    age = gets.to_i
    print "Gender: "
    gender = gets.chomp
    print "Which apartment do you want to live in:"
    apt = gets.chomp

    building.apartments[apt].renters << Person.new(name, age, gender)

# binding pry


  elsif response == 'a'
    print "Name: "
    name = gets.chomp
    print "sq ft: "
    sqft = gets.to_i
    building.apartment[name] = Apartment.new(name, sqft, 0, 0)
  elsif response == 'b'
    building = Building.new('10E21ST', 'GA', false, false, 10)
  end

  print "add (p)erson or (a)partment or (b)uilding or or (d)ebug or (q)uit: "
  response = gets.chomp.downcase

end

#binding.pry