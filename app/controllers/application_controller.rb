class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

 def configure_permitted_parameters
   update_attrs = [:password, :password_confirmation, :current_password]
   devise_parameter_sanitizer.permit :account_update, keys: update_attrs
 end

  helper_method :current_order

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end

end
