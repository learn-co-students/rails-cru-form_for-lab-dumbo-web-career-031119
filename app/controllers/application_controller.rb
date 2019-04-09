class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # def get_by_id(klass)
  #   @instance = klass.find(params[:id])
  #   redirect_to @instance
  # end

  protect_from_forgery with: :exception



end
