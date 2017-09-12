#Helper for doctor details
module DoctorHelper
  
  def state_lists
    [%w[Georgia GA], %w[Canada CA], %w[NewYork NY], %w[Alaska AK]]
  end

  def full_name(resp)
  	first_name = resp['profile']['first_name']
  	middle_name = resp['profile']['middle_name'] 
  	last_name = resp['profile']['last_name']
    (first_name + middle_name + last_name) rescue nil
  end	

  def full_address(resp)
  	city = resp['practices'].first['visit_address']['city']
  	state = resp['practices'].first['visit_address']['state'] 
  	zip = resp['practices'].first['visit_address']['zip']
  	street = resp['practices'].first['visit_address']['street'] 
  	(city + state + zip + street) rescue nil
  end 	

  def phone_number(resp)
  	phone = resp['practices'].first['phones'].collect{ |ph| ph['number'] }
  	phone.to_sentence
  end	

  def first_name(resp)
  	resp['practices'].first['name'] 
  end	

end


