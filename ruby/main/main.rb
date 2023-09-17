#!/usr/bin/ruby



class MyStr
  def initialize(str)
    @str = str
  end

  def changeChar!(idx, char)
    # change the character in the index
    @str[idx] = char
  end

  def printStr()
    puts @str
  end

  def self.jj()
    p self
  end

end

txt = MyStr.new("Jojo Thomas")

MyStr.jj()
