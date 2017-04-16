require 'rails_helper'

describe "Signs API" do
  context ".." do
    it ".." do

headers = { "CONTENT_TYPE" => "application/json", "HTTP_ACCEPT" => "application/json" }

      get '/signs', nil, headers

      json = JSON.parse(response.body)

      p json
    end
  end
end

begin
  
rescue Exception => e
  
end