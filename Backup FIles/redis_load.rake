task :redis_load do
require 'rubygems'
require 'json'
require 'rake'
require "redis"


# Inserting into Redis
redis = Redis.new(:url => "redis://h:p5sng1edj2tbnu4l1ojjts5ndiu@ec2-54-83-59-218.compute-1.amazonaws.com:6619")
redisfile = File.read('/home/laevo/cse-rvg6285-2/public/redisdata.json')
redis_data = JSON.parse(redisfile)
redis_data.each do |key, value|
   redis.set("#{key}", "#{value}")  
  end
 end