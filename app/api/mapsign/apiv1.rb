module Mapsign
  class Apiv1 < Grape::API

    version 'v1', using: :header, vendor: 'mapsign'
    format :json
    prefix :v1  

    desc 'Return a status.'
    
    get '/' do
      Sign.markers.to_json
    end
    
  end
end