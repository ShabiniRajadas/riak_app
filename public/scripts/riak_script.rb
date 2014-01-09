require 'riak'
require 'csv'

# Create a client interface
script_client = Riak::Client.new()
# a Riak::Bucket
bucket = script_client.bucket("orders")  
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

  end
