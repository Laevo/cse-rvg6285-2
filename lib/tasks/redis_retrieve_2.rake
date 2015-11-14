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

$redis.keys.each do |key|
	puts $redis.get("#{key}")
	 #val = $redis.get("#{key}")
	 if $redis.get("#{key}") >= min_pop && $redis.get("#{key}") <= max_pop
	 	puts "#{key}"
	 end
  end

end