task :mongo_get_pk do

require 'mongo'


mongo_uri = ENV['MONGOLAB_URI']
client = Mongo::Client.new(mongo_uri);
db = client.database
  
  print "Enter Primary Key > "
user_entry = $stdin.gets.chomp
pk = "#{user_entry}"

  db[:population].find('_id' => "#{pk}").each do |country|
      puts " ------ " 
      puts country['_id']
      puts country['population']
      puts " ------ " 
  end



end