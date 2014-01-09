class NameController < ApplicationController

	def index
		client = Riak::Client.new()
		bucket = client.bucket('orders')
		@keys = client.list_keys('orders')
	end

end
