class SignsController < ApplicationController

  before_action :authenticate_user!
  
  def index
    @signs = current_user.devices.first.signs
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
