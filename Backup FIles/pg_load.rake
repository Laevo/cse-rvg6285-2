task :pg_load do
require 'rubygems'
require 'json'


pgfile = File.read('/home/laevo/cse-rvg6285-2/public/pgdata.json')
pg_data = JSON.parse(pgfile)
pg_data.each do |record|
  Population.create!(record)
  end
end