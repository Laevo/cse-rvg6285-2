require "redis"

# Inserting into Postgres
# heroku run rake db:seed --app cse-rvg6285-2

pgfile = File.read('pgdata.json')
pg_data = JSON.parse(pgfile)
pg_data.each do |record|
  Population.create!(record)
  end


# Inserting into Redis
redis = Redis.new
redisfile = File.read('redisdata.json')
redis_data = JSON.parse(redisfile)
redis_data.each do |key, value|
   redis.set("#{key}", "#{value}")  
  end

