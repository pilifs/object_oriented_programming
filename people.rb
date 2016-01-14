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
    puts "I get it"
  end
end

class Instructor < Person

  def teach
    puts "Everything in Ruby is an Object"
  end

end

chris = Instructor.new("Chris")
cristina = Student.new("Cristina")

chris.greeting
cristina.greeting

chris.teach
# cristina.teach
# This method does not work because a Student object has no access to the teach method defined in Instructor, since Instructor is not a parent class of student. It would work if the method were in people.
