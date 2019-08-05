class ApplicationController < ActionController::Base

  def authenticate
    if !signed_in?
      redirect_to new_session_path
    end
  end

  def signed_in?
    session[:current_email].present? 
  end

  def current_user_email
    session[:current_email] if signed_in?
  end
end
