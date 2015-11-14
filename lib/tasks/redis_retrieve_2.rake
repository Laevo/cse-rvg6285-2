task :redis_retrieve_2 do

require "redis"



$redis = Redis.new(url: ENV["REDIS_URL"])
$redis.inspect

print "Enter Min Population > "
user_entry1 = $stdin.gets.chomp
min_pop = "#{user_entry1}"
puts user_entry1
puts min_pop

print "Enter Max Population > "
user_entry2 = $stdin.gets.chomp
max_pop = "#{user_entry2}"
puts user_entry2
puts max_pop

$redis.keys.each do |key|
	 val = $redis.get("#{key}")
	 if val >= user_entry1 && val <= user_entry2
	 	puts "#{key}"
	 end
  end

end