#!/usr/bin/ruby

class Person

  def initialize(name, age)
    @name = name
    @age = age
  end

  def printInfo()
    puts "My name is #{@name} and my age is #{@age}"
  end
end

p Person
jojo = Person.new("Jojo Thomas", 24)
p jojo
jojo.printInfo()
