ef process_consumer_address_form(fields)
  unless fields[:zip] =~ /[1-9][0-9]{4}/
    raise InvalidZipCodeError
  end

  # more form processing
end

def process_business_address_form(fields)
  unless fields[:zip] =~ /[1-9][0-9]{4}/
    raise InvalidZipCodeError
  end

  # more form processing
end

def process_consumer_address_form(fields)
    raise InvalidZipCodeError unless valid_zip?(fields[:zip])
    # more form processing
  end
  
  def process_business_address_form(fields)
    raise InvalidZipCodeError unless valid_zip?(fields[:zip])
    # more form processing
  end
  
  def valid_zip?(zip)
    zip =~ /[1-9][0-9]{4}/
  end