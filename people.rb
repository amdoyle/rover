class Person

  attr_accessor = :name, :grade

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def greeting
    puts "Hi, my name is #{@name}."
  end
end


class Students < Person


  def learn
    puts "I get it!"
  end

  def grade
    puts "I am in grade #{@grade}"
  end

end

class Instructor < Person

  def teach
    puts "Everything in Ruby is an Object."
  end
end

chris = Instructor.new("Chris", 12)

chris.greeting

christina = Students.new("Christina", 12)

christina.greeting

chris.teach
christina.learn
# christina.teach # => this won't work since the method teach is unqiue to the class Instructor
christina.grade
