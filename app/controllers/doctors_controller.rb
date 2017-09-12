class DoctorsController < ApplicationController
	  #layout 'admin'

	def get_host
		"https://api.betterdoctor.com/2016-03-01/doctors"
	end 

	def get_user_key
		"bde277a830cc8ea5e096909a9188e747"
	end 

	def select_state
		respond_to do |format|
		  format.html
		end
	end	

	def get_doctors
		location = params["select_tag_value"]
		resp = RestClient.get("#{get_host}?location=#{location}&limit=5&user_key=#{get_user_key}", {'Accept' => 'application/json'}){ |response, request, result| response }
		@response = JSON.parse(resp)
		respond_to do |format|
			format.js
		end	
	end	

end


