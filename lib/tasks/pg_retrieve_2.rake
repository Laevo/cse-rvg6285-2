task :pg_retrieve_2 do
require 'pg'
require 'uri'

encoded_url = URI.encode('postgres://mdtgjzhcjmfqss:om1F_iqgr3E1NEorJ5RYjUIiL5@ec2-107-21-223-110.compute-1.amazonaws.com:5432/d81br56bqufgid')
uri = URI.parse(encoded_url)
postgres = PG.connect(uri.hostname, uri.port, nil, nil, uri.path[1..-1], uri.user, uri.password)


print "Enter Min Population > "
user_entry1 = $stdin.gets.chomp
min_pop = "#{user_entry1}"

print "Enter Max Population > "
user_entry2 = $stdin.gets.chomp
max_pop = "#{user_entry2}"

output = "select name, population from populations where population between $1 and $2+99999999 limit 20"
ans = postgres.exec_params(output, [min_pop, max_pop])
puts ans.values

end