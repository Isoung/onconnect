require 'net/http'
require 'json'

require_relative 'data_delivery/data_delivery'

class OnConnect
  include DataDelivery

  def initialize(api_key)
    @api_key = api_key
    @url = 'http://data.tmsapi.com/v1.1/'
  end

  def get(search, dyn_params)
    uri = URI(@url + search)
    uri.query = URI.encode_www_form(dyn_params)

    response = Net::HTTP.get_response(uri)
    response.body
  end
end
