class DoctorsController < ApplicationController

	def get_host
		ENV['HOST']
	end 

	def get_user_key
		ENV['USER_ID']
	end 

	def select_state
	end	

	def get_doctors
		location = params["select_tag_value"]
		begin
			resp = RestClient.get("#{get_host}?location=#{location}&limit=10&user_key=#{get_user_key}", {'Accept' => 'application/json'}){ |response, request, result| response }
			@response = JSON.parse(resp)
    	respond_to do |format|
	     format.js 
	    end  
		rescue Exception => e
			p e.message
		end	
	end	

end


