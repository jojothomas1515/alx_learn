#!/usr/bin/ruby

name = gets

puts name


class Person
  @@version = 1

  def initialize(name, age)
    @name = name
    @age = age
  end

  def printInfo
    puts "the user name is #{@name} and the age is #{@age}"
  end

end


jojo = Person.new("Jojo Thomas", 32)

jojo.printInfo
