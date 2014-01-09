require 'riak'

$client = Riak::Client.new()
$bucket = $client.bucket('orders')

keys = $client.list_keys('orders')
keys.each do |key|
	data_value = $bucket.get(key)
	p data_value.data
end