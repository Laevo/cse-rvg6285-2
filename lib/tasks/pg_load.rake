task :pg_load do
require 'rubygems'
require 'json'

  # Create the connection instance.

data_file = File.read('/home/laevo/cse-rvg6285-2/public/pgdata.json')
data_parse = JSON.parse(data_file)
# for (i=0; i<data_parse.counters.length; i++){
# 	puts data_parse['Country'.to_i]
#  }
data_parse.each do |record|
   Population.create!(record)
end
end