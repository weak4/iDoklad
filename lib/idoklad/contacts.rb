require 'json'
class Idoklad::Contacts

  def self.get_list
    response = Idoklad::ApiRequest.get '/developer/api/v2/Contacts'
    return JSON.parse response.body
  end

  def self.get_default
    response = Idoklad::ApiRequest.get '/developer/api/v2/Contacts/Default'
    return JSON.parse response.body
  end

  def self.get(contact)
    response = Idoklad::ApiRequest.get "/developer/api/v2/Contacts/#{contact}"
    return JSON.parse response.body
  end

  def self.create(contact)
    response = Idoklad::ApiRequest.post '/developer/api/v2/Contacts', contact
    return JSON.parse response.body
  end

end
