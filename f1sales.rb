require 'net/http'
require 'csv'

puts "Exercicio F1Sales"
puts

file = File.read('./lost-leads%20(1).csv')

csv = CSV.parse(file, headers: true)

uri = URI('https://httpbin.org/post')

csv.map do |row|
  puts Net::HTTP.post_form(uri, row).body
  puts
end
