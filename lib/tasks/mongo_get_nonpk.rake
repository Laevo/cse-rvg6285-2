task :mongo_get_nonpk do

require 'mongo'


mongo_uri = ENV['MONGOLAB_URI']
client = Mongo::Client.new(mongo_uri);
db = client.database
  
print "Enter Min Population > "
user_entry1 = $stdin.gets.chomp
min_pop = "#{user_entry1}"

print "Enter Max Population > "
user_entry2 = $stdin.gets.chomp
max_pop = "#{user_entry2}"

  db[:population].each do |country|
  	  pop = country['population']
      if (pop.to_i >= min_pop.to_i && pop.to_i <= max_pop.to_i)
      puts country['_id']
      puts country['population']
      puts " ------ " 
  	  end
	end



end