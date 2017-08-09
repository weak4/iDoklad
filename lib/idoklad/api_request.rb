module Idoklad::ApiRequest

  def self.get(path)
    @token ||= Idoklad::Auth.get_token

    uri = URI.parse("#{Idoklad::API_URL}#{path}")
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.get(uri.request_uri, {'Authorization' => "Bearer #{@token}"})
  end
  
end
