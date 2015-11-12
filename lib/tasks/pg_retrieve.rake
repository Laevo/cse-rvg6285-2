task :pg_retrieve do
require 'pg'
require 'uri'

encoded_url = URI.encode('postgres://mdtgjzhcjmfqss:om1F_iqgr3E1NEorJ5RYjUIiL5@ec2-107-21-223-110.compute-1.amazonaws.com:5432/d81br56bqufgid')
uri = URI.parse(encoded_url)
postgres = PG.connect(uri.hostname, uri.port, nil, nil, uri.path[1..-1], uri.user, uri.password)


print "Enter Primary Key > "
user_entry = $stdin.gets.chomp
pk = "#{user_entry}"

postgres.prepare 'output', "select name, population from populations where name=$1"
ans = postgres.exec_prepared 'output', [pk]
puts ans.values

#   Population = postgres.exec('select * from populations')
#  Population.each do |record|
#    puts "%s %s" % [record['name'], record['population'] ]
# end
end