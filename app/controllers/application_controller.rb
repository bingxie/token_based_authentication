class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_session

  helper_method :current_user

  def current_user
    @current_user || OpenStruct.new(:name => "bing")
  end

  def set_session
    logger.info 'set session'
    session[:current_user_id] = "123456789"
  end
end
