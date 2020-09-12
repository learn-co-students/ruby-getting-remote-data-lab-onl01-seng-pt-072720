require 'open-uri'
require 'pry'
require 'json'

class GetRequester

    def initialize(url)
        @url = url
    end

    def get_response_body
        uri = URI.parse(@url) 
        uri.open.string
    end

    def parse_json
        JSON.parse(get_response_body)
    end
end