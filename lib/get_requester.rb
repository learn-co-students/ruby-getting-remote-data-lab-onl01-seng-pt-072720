require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

  #URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

  attr_reader :url

  def initialize(url)
    @url = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
  end

  def get_response_body
    body = Net::HTTP.get(URI.parse(@url))
  end

  def parse_json
    response = JSON.parse(self.get_response_body)
  end
end
