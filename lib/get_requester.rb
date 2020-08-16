# Write your code here

require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
  
  def initialize(url)
    @url = url
  end
  
  def get_response_body
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    return response.body
  end
  
  def parse_json
    data = get_response_body()
    return JSON.parse(data)
  end
  
  # URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
  

end