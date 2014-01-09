class NameController < ApplicationController

	def index
		client = Riak::Client.new()
		bucket = client.bucket('orders')
		@keys = client.list_keys('orders')
	end

	def create
		@name = Name.new(name_params)
		if @name.save
			flash[:notice] = "User is created Successfully."
		else
			render :action => :new
		end
	end

	def show
	end

	private

	def name_params
		params.require(:name).permit(:name, :order, :number)
	end
end
