require 'net/http'
require 'uri'


uri = URI('http://artpes57.beget.tech/todos')
req = Net::HTTP::Post.new(uri)
req.set_form_data( 'title' => 'ruby', 'created_by' => '2')

res = Net::HTTP.start(uri.hostname, uri.port) do |http|
  http.request(req)
end

case res
when Net::HTTPSuccess, Net::HTTPRedirection
   puts 'Good'
else
  puts 'Bad'
end