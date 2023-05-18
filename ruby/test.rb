#!/usr/bin/ruby

require "csv"

CSV.open("emails.csv") do |emails|
  emails.read.each.with_index do |email, idx|
    if idx == 0
      next
    end
    puts "#{email}"
  end
end
