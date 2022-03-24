require 'net/http'
require 'csv'

def usa_o_post_form

  uri = URI('https://httpbin.org/post')

  hash = {'site'=>'Ruby Doc'}

  res = Net::HTTP.post_form(uri, hash)

  puts res.body
end


puts "Processando Arquivos CSV"
puts

file = File.read('./lost-leads%20(1).csv')

csv = CSV.parse(file, headers: true)

uri = URI('https://httpbin.org/post')

csv.map do |row|
  puts Net::HTTP.post_form(uri, row).body
  puts
end
