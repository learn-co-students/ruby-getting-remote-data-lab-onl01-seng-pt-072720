require 'net/https'
require 'open-uri'
require 'json'


class GetRequester

  def initialize (url_address)
    @url_address = url_address
  end

  def get_response_body
    uri = URI.parse(@url_address)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def parse_json
    request = JSON.parse(self.get_response_body)
  end
end
