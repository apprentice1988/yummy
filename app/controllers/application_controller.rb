class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :http_authenticate

  def http_authenticate
    if Rails.env.production?
      authenticate_or_request_with_http_basic do |username, password|
        username == "houzi" && password == "1123"
      end 
    end
  end
end
