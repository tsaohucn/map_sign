class Sign < ActiveRecord::Base
  belongs_to :device

  def self.markers
    signs = Sign.all
    markers = Gmaps4rails.build_markers(signs) do |sign, marker|
      marker.lat sign.latitude
      marker.lng sign.longitude
      marker.infowindow sign.message
    end
    markers    
  end
end
