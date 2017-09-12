module DoctorHelper
  
  def get_state_lists
    [[ 'Georgia', 'GA' ], [ 'Canada', 'CA' ], [ 'New York', 'NY' ], [ 'Alaska', 'AK' ]]
  end

  def full_name(resp)
  	first_name = resp["profile"]["first_name"]
  	middle_name = (resp["profile"]["middle_name"] rescue nil)
  	last_name =  (resp["profile"]["last_name"] rescue nil)
    full_name = (first_name + middle_name + last_name) rescue nil
    return full_name
  end	

  def full_address(resp)
  	city = (resp["practices"].first["visit_address"]["city"])
  	state = (resp["practices"].first["visit_address"]["state"] rescue nil )
  	zip = (resp["practices"].first["visit_address"]["zip"] rescue nil)
  	street =  (resp["practices"].first["visit_address"]["street"] rescue nil)
  	full_address = (city + state + zip + street) rescue nil
  end 	

  def phone_number(resp)
  	phone = resp["practices"].first["phones"].collect{|ph| ph["number"]}
  	return phone.to_sentence
  end	

  def first_name(resp)
  	resp["practices"].first["name"] 
  end	

end

