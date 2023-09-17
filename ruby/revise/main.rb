#!/usr/bin/ruby

require "net/http"

uri = URI("http://web-01.jojothomas.tech/")
puts uri.hostname
req = Net::HTTP::Get.new(uri)
res = Net::HTTP::start(uri.hostname) do |http|
  http.request(req)
end

puts res.body
