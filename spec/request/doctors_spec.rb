require 'rails_helper'
RSpec.describe DoctorsController, :type => :controller do
  describe "GET 'get_doctors method'" do
    it 'retrieves the list of all doctors' do
      xhr :get, :get_doctors, :params => {select_tag_value: "GA"}
      expect(response).to be_success
      response.status.should eq 200
    end
  end 
end 

  	
