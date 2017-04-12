class SignsController < ApplicationController

  before_action :authenticate_user!
  
  def index
    @signs = Sign.all
    @hash = Gmaps4rails.build_markers(@signs) do |sign, marker|
      marker.lat sign.latitude
      marker.lng sign.longitude

      marker.infowindow render_to_string(:partial => "/cities/infowindow")
      marker.title "Taipei"
      marker.json({ :population => "ddddd"})
      marker.picture({:picture => "http://mapicons.nicolasmollet.com/     wp-content/uploads/mapicons/shape-default/color-3875d7/shapeco     lor-color/shadow-1/border-dark/symbolstyle-contrast/symbolshad     owstyle-dark/gradient-iphone/information.png",
                    :width => 32,
                    :height => 32})
  end 

  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

end
