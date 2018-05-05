class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :except => [:index, :show]
  Rails.application.config.session_store :cookie_store, key: "current_user_id"

  Rails.application.config.session_store :cookie_store, key: "current_project_id"

@wishlist = Wishlist.all


  def is_user_logged_in?
    logged_in = false
    #complete this method
    #flash[:notice] = session[:current_user_id]
    flash[:notice] = current_user

    if current_user
      logged_in = true
    else
      logged_in = false
    end
    if logged_in  == true
      true
    else
      #redirect_to root_path
    end

  end




end