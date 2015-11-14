task :redis_retrieve do

require "redis"



$redis = Redis.new(url: ENV["REDIS_URL"])
$redis.inspect
print "Enter Primary Key > "
user_entry = $stdin.gets.chomp
pk = "#{user_entry}"
puts $redis.get(pk)

end