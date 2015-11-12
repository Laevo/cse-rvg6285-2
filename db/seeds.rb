require "redis"
require 'mongo'

include Mongo
# # Inserting into Postgres
# # heroku run rake db:seed --app cse-rvg6285-2

# pgfile = File.read('pgdata.json')
# pg_data = JSON.parse(pgfile)
# pg_data.each do |record|
#   Population.create!(record)
#   end


# # # # Inserting into Redis
# redis = Redis.new
# redisfile = File.read('redisdata.json')
# redis_data = JSON.parse(redisfile)
# redis_data.each do |key, value|
#    redis.set("#{key}", "#{value}")  
#   end

# Inserting into mongo
mongo_uri = ENV['mongodb://heroku_kkpqddm8:41chrq1pn46pqql09h3nmut8u1@ds053764.mongolab.com:53764/heroku_kkpqddm8']
client = MongoClient.new(mongo_uri)
db = client.database
mongofile = File.read('redisdata.json')
mongo_data = JSON.parse(mongofile)
 # mongo_data.each do |key, value|
 # 	puts "#{key}"
     # db[:populatio].insert_one({_id: "#{key}", population:"#{value}"})
 #end