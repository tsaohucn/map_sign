module Mapsign
  class Api < Grape::API

    before do
      content_type 'application/json;charset=UTF-8'  
    end

    mount Mapsign::Apiv1 => '/api'
    

  end
end