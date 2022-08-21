# Write your code here
require 'net/http'
require 'json'
require 'open-uri'



class GetRequester
attr_accessor :url
def initialize(url)
    @url=url
end

def get_response_body
uri=URI.parse(url)
res=Net::HTTP.get_response(uri)
res.body
end

def parse_json
JSON.parse(get_response_body())
end


end