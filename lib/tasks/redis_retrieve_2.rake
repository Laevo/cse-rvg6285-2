task :redis_retrieve_2 do
require "redis"

$redis = Redis.new(url: ENV["REDIS_URL"])
$redis.inspect

print "Enter Min Population > "
user_entry1 = $stdin.gets.chomp
min_pop = "#{user_entry1}"

print "Enter Max Population > "
user_entry2 = $stdin.gets.chomp
max_pop = "#{user_entry2}"

$redis.limit(20).keys.each do |key|
	 val = $redis.get("#{key}")
	 if (val.to_i >= min_pop.to_i && val.to_i <= max_pop.to_i) 
	 	puts "#{key}" ' = ' "#{val}"
	 end
  end

end