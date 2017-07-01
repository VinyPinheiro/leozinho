class ApplicationController < ActionController::Base
  helper_method :current_user

  def ocurred_errors(object)
    object.errors.messages.each do |_attrib, messages|
      flash[:error] = messages.join(', ')
    end
  end

  private

  def current_user
    current_user ||= User.find(session[:user_id]) unless session[:user_id].nil?
  end

  def autenticated?
    return unless current_user.nil?

    flash.now[:notice] = 'Você precisa estar logado'
    redirect_to log_in_path
  end
end
