# This will get the list of all doctors
class DoctorsController < ApplicationController
	def host
		ENV['HOST']
	end 

	def user_key
		ENV['USER_ID']
	end 

	def select_state; end	

	def doctors
		location = params['select_tag_value']
		begin
			resp = RestClient.get("#{host}?location=#{location}&limit=10&user_key=#{user_key}")
			@response = JSON.parse(resp)
    	respond_to do |format|
	     format.js 
	    end  
		rescue StandardError => e
			p e.message
		end	
	end	

end


