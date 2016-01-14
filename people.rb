class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greeting
    puts "HI, my name is #{name}"
  end
end

class Student < Person
  def learn
    "I get it"
  end
end

class Instructor < Person

  def teach
    "Everything in Ruby is an Object"
  end
end

chris = Instructor.new("Chris")
cristina = Student.new("Cristina")

chris.greeting
cristina.greeting
