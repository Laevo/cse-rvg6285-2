task :mongo_get_pk do

require 'mongo'


mongo_uri = ENV['MONGOLAB_URI']
client = Mongo::Client.new(mongo_uri);
db = client.database
  
  print "Enter Primary Key > "
user_entry = $stdin.gets.chomp
pk = "#{user_entry}"

  db.population.find(id : "#{pk}").each do |doc|
      puts doc
      # db[:population].insert_one({_id: "#{key}", population:"#{value}"})
 end



end