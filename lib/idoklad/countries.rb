require 'json'
class Idoklad::Countries

  def self.get_list
    response = Idoklad::ApiRequest.get '/developer/api/v2/Countries'
    return JSON.parse response.body
  end

  def self.get(country)
    response = Idoklad::ApiRequest.get "/developer/api/v2/Countries/#{country}"
    return JSON.parse response.body
  end

end
