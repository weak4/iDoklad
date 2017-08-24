require 'json'
class Idoklad::IssuedInvoices

  def self.get_list
    response = Idoklad::ApiRequest.get '/developer/api/v2/IssuedInvoices'
    return JSON.parse response.body
  end

  def self.get_default
    response = Idoklad::ApiRequest.get '/developer/api/v2/IssuedInvoices/Default'
    return JSON.parse response.body
  end

  def self.create(invoice)
    response = Idoklad::ApiRequest.post '/developer/api/v2/IssuedInvoices', invoice
    return JSON.parse response.body
  end

  def self.get_pdf(invoice_id)
    response = Idoklad::ApiRequest.get "/developer/api/v2/IssuedInvoices/#{invoice_id}/GetPdf"
    return response.body
  end

end
