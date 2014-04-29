# encoding: UTF-8
require "twitter"
require "uri"

def search(input)
# client = Twitter::Streaming::Client.new do |config|
 client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "qD0yapbhte9uT2dBEDsrTsUzv"
  config.consumer_secret     = "eTdTNkUa57OkNe1KEep3crQrmcblQDHfYFfInMy8JNQstKdfT6"
  config.access_token        = "373992248-7OFmo7IlwwvjkbIlLA222ypXU4n8uM4kDhuArHav"
  config.access_token_secret = "o3MIQ7ld6cQ3Xf09DsPLMyglqFlUGf7ApyXXHEPqZdbaZ"
 end
output = client.search(input,:lang => "th",:include_entities => true).take(150).collect
# client.search("cat") do |obj|
#  puts object.text if object.is_a?(Twitter::Tweet)
# end
#client.search(input, :result_type => "recent").take(3).collect do |tweet|
  #puts "#{tweet.user.screen_name}: #{tweet.text}" if tweet.is_a?(Twitter::Tweet)
  #puts "#{tweet.user.show}"
  #puts "#{tweet.user.profile_image_url}"
 # puts "#{tweet}"
#end
#output.each do |o|
# o.created_at = o.created_at.to_time.to_i
#end
return output.to_a
end

res = search("#เสี่ย")
puts res.count

#ress = res.to_a[0]
#puts ress.text
count = 0
res.each do |r|
# puts r.id 
# puts r.created_at
 puts r.text
 puts count
 count+=1
end

