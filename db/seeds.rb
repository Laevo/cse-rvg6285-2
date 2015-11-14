require "redis"
require 'mongo'
# # Inserting into Postgres
# # heroku run rake db:seed --app cse-rvg6285-2

# pgfile = File.read('pgdata.json')
# pg_data = JSON.parse(pgfile)
# pg_data.each do |record|
#   Population.create!(record)
#   end


# # # # Inserting into Redis
# redis = Redis.new
# redisfile = File.read('redismongo.json')
# redis_data = JSON.parse(redisfile)
# redis_data.each do |key, value|
#    redis.set("#{key}", "#{value}")  
#   end

# Inserting into mongo
mongo_uri = ENV['MONGOLAB_URI']
client = Mongo::Client.new(mongo_uri);
db = client.database
# db.collection_names.each{|name| puts name }
mongofile = File.read('redismongo.json')
mongo_data = JSON.parse(mongofile)
  mongo_data.each do |key, value|
  	# puts "#{key}" ' = ' "#{value}"
      db[:population].insert_one({_id: "#{key}", population:"#{value}"})
 end