# site do desafio https://valley-honeycrisp-a14.notion.site/Task-59bc83b5ddd24c0a84f2465c40cc5c02

require 'net/http'
require 'csv'

puts "F1Sales Exercise"
puts

begin
    
  file = File.read('./lost-leads%20(1).csv')

  csv = CSV.parse(file, headers: true)

  uri = URI('https://httpbin.org/post')

  csv.each_with_index do |row, i|
    Net::HTTP.post_form(uri, row)
    puts "Faltam #{csv.length-i} linhas"
    # puts Net::HTTP.post_form(uri, row).body
  end
  puts 'Fim :)'
  puts

rescue
  puts "Houve um problema, verifique sua conexão com a internet"
else
  puts "Tudo Pronto"
end
