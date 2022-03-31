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
    request = Net::HTTP.post_form(uri, row)
    puts "Still #{csv.length-i} rows to go."
    puts request.body
  end
  puts 'End :)'
  puts

rescue Interrupt
  puts "\n\nThe process has been INTERRUPTED.\n\n"
rescue SocketError
  puts "There was a problem, check your internet connection.\n\n"
rescue
  puts 'Sorry, we had a problem :('
else
  puts 'Everything is ready.'
end

# Testando o comando Pull
