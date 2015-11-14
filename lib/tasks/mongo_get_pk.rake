task :mongo_get_pk do

require 'mongo'


mongo_uri = ENV['MONGOLAB_URI']
client = Mongo::Client.new(mongo_uri);
db = client.database
  
  print "Enter Primary Key > "
user_entry = $stdin.gets.chomp
pk = "#{user_entry}"

 #  mongo_data.each do |key, value|
 #      db[:population].insert_one({_id: "#{key}", population:"#{value}"})
 # end

 Model.all.each do |r|
  puts r
  # Sunspot.index(r)
end

end