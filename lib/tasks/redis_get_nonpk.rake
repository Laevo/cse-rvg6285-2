task :redis_get_nonpk do
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
	 pop = $redis.get("#{key}")
	 if (pop.to_i >= min_pop.to_i && pop.to_i <= max_pop.to_i) 
	 	puts "#{key}" ' = ' "#{pop}"
	 end
  end

end