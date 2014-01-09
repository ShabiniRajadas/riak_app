require 'riak'
require 'csv'

# Create a client interface
script_client = Riak::Client.new()

# Create a client that uses Protocol Buffers
#client = Riak::Client.new(:protocol => "pbc")

# Automatically balance between multiple nodes
#client = Riak::Client.new(:nodes => [
#   {:host => '10.0.0.1'},
#   {:host => '10.0.0.2', :pb_port => 1234},
#   {:host => '10.0.0.3', :pb_port => 5678}
# ])

# Retrieve a bucket
bucket = script_client.bucket("orders")  # a Riak::Bucket
csv_text = File.read('excel/excel.csv')
csv = CSV.parse(csv_text, :headers => true)
#excel = File.open("excel_sheet", "r")

csv.each do |row|
	name, orders, number = row.to_hash

    name_details = {
    :name => name,
    :orders => orders,
    :number => number
	}
	p name_details

	name_riak = bucket.new(name_details[:name])
  	name_riak.data = name_details
  	name_riak.store

  	#p name_riak
  end
